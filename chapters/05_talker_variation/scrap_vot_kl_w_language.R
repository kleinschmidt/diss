library(dplyr)
library(tidyr)
library(purrr)

library(votcorpora)
library(nspvowels)

################################################################################
## from talker-variation.Rmd

apply_groupings <- function(d, groupings) {
  groupings %>% 
    map(~ d %>% mutate(data = map(data, . %>% group_by_(.x)),
                       grouping = .x)) %>%
    reduce(bind_rows)
}

run_kl <- function(data_grouped, reference_grouping,
                   category_col='Vowel', cue_cols=c('F1', 'F2'), ...) {
  ## check input format
  assert_that(has_name(data_grouped, 'data'),
              has_name(data_grouped, 'grouping'))

  train <- partial(train_models, grouping=category_col, formants=cue_cols,  ...)
  
  models <- data_grouped %>%
    mutate(models = map2(data, grouping, ~ train(.x) %>% rename_(group=.y)))

  models %>%
    filter(grouping == reference_grouping) %>%
    mutate(reference_models = map(models, rename_, reference_group = 'group')) %>%
    select(-grouping, -data, -models) %>%
    left_join(models %>% filter(grouping != reference_grouping)) %>%
    mutate(kl_from_reference = map2(models, reference_models,
                                    ~ left_join(.x, .y, by=category_col) %>%
                                      mutate(KL = map2_dbl(model.x, model.y,
                                                           KL_mods)) %>%
                                      select_('group', 'reference_group',
                                              category_col, 'KL')
                                    )
           ) %>%
    unnest(kl_from_reference)
    
}

vot_groupings <- c('Marginal', 'Sex', 'Age', 'Talker')

################################################################################

vot_kl_w_lang <- votcorpora::vot %>%
  filter(source %in% c('levari-sent', 'buckeye'),
         voicing == 'voiceless',
         is.finite(vot)) %>%
  mutate(lang=ifelse(bilingual, 'fr_eng', 'eng'), Marginal='all') %>%
  rename(Talker=subject, Sex=sex, Age=age_group) %>%
  group_by(place) %>%
  nest() %>%
  apply_groupings(c(vot_groupings, 'lang')) %>%
  run_kl('Marginal', 'voicing', 'vot')

vot_kl_w_lang %>%
  group_by(grouping, group) %>%
  summarise(KL = mean(KL)) %>%
  do({ boot_ci(.$KL, function(d,i) mean(d[i])) })

vot_kl_w_lang %>%
  filter(grouping == 'lang') %>%
  group_by(group) %>%
  summarise(KL = mean(KL))
  
