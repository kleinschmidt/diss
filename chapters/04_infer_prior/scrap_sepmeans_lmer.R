
sepmeans <- supunsup::separatemeans_clean

sepmeans_conds <-
  sepmeans %>%
  group_by(bvotCond, pvotCond) %>%
  summarise() %>%
  ungroup() %>%
  arrange(bvotCond, pvotCond) %>%
  mutate(vot_cond = paste(bvotCond, pvotCond),
         vot_cond = factor(vot_cond, levels=vot_cond))

sepmeans_stats <-
  sepmeans %>%
  filter(!is_test) %>%
  left_join(sepmeans_conds) %>%
  group_by(bvotCond, pvotCond, vot_cond, trueCat) %>%
  summarise(mean = mean(vot), sd = sd(vot)) %>%
  rename(category = trueCat)

sepmeans_exposure_lhood <-
  sepmeans_stats %>%
  group_by(bvotCond, pvotCond, vot_cond) %>%
  do({stats_to_lhood(.)})

sepmeans_exposure_class <-
  sepmeans_exposure_lhood %>%
  do({lhood_to_classification(.)})

sepmeans_conds <-
  sepmeans %>%
  group_by(bvotCond, pvotCond) %>%
  summarise() %>%
  ungroup() %>%
  arrange(bvotCond, pvotCond) %>%
  mutate(vot_cond = paste(bvotCond, pvotCond),
         vot_cond = factor(vot_cond, levels=vot_cond))

cs <- contr.helmert(sepmeans_conds$vot_cond) %*% diag(1/(1:4))
colnames(cs) <- levels(sepmeans_conds$vot_cond)[2:5]
contrasts(sepmeans_conds$vot_cond) <- cs
  

# process data for modeling:
sepmeans_test <- sepmeans %>%
  # only modeling test trials:
  filter(is_test) %>%
  # convert b/p means into center + distance
  mutate(vot_cond_center = bvotCond + pvotCond,
         vot_cond_dist = pvotCond - bvotCond) %>%
  left_join(sepmeans_conds, by=c('bvotCond', 'pvotCond')) %>%
  # center/10 and scaled versions of continuous predictors
  mutate_each(funs(c10 = (. - mean(.))/10,
                   scale = (. - mean(.))/sd(.)),
              vot, vot_cond_center, vot_cond_dist, trial)

summary(sepmeans_test)

## Lots of convergence issues with LMER.

m0 <- glmer(respP ~ 1 + vot_c10 + vot_cond + trial_c10 +
              (1 | subject),
            data = sepmeans_test, family='binomial')

summary(m0)

m0.1 <- glmer(respP ~ 1 + vot_c10 + vot_cond + trial_c10 +
                (1 + vot_c10 | subject),
              data = sepmeans_test, family='binomial')

summary(m0.1)

m0.2 <- glmer(respP ~ 1 + vot_c10 + vot_cond + trial_c10 +
                (1 + vot_c10 || subject),
              data = sepmeans_test, family='binomial')

summary(m0.2)

## m1 <- glmer(respP ~ 1 + vot_c10 * vot_cond * trial_c10 +
##               (1 + vot_c10 * trial_c10 | subject),
##             data = sepmeans_test, family='binomial')

## summary(m1)


stargazer::stargazer(m0, m0.1, m0.2, star.cutoffs=c(0.05, 0.01, 0.001), type='html')

