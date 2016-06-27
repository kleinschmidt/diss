# Dissertating notes

## Organization

A couple of organizational schemes jump out at me:

1. By methodology.  Modeling/behavioral/neuro chapters/sections.
2. By topic.  Start with theory: how to do perception in an uncertain and nonstationary world (psych review intro/framework, plus maybe some more discussion of efficient coding/why to adapt _sensory_ representations, rather than just readout).  Then jump into particular questions: 
    1. modeling+experiments on phonetic recalibration/selective adaptation, 
    2. modeling+experiments on generalization, 
    3. modeling on acquisition (maybe), 
    4. lower-level adaptation/selective adaptation+modeling, 
    5. neural implementation theory + data (and maybe modeling)

## Projects

### Modeling

#### Belief updating model of recalibration/selective adaptation

Status: Done, published.

##### Variation: belief updating with sensory uncertainty #####

Feldman + Belief updating.  Categories aren't distributions over _fully_ observed cues, but rather cues values themselves are inferred based on uncertain input from level below.  How does this affect belief updating?

Status: TODO 

##### Variation: unsupervised belief updating #####

Simulations have thus far all assumed that intended categories are all _known_ with certainty.  What happens when that assumption is backed off?

Status: TODO

#### Ideal adapter framework

Hierarchical model: learn distributions _and_ prior over generative models

Status: in motherfuckin press

##### Cross-talker generalization as hierarchical belief updating #####

Have proposed to model the effect that experience with other talkers has on comprehension of and adaptation to another talker as _inference_ about where talkers belong in some structured prior over talker generative models.  Generalization happens (or doesn't) depending on whether the listener infers that two talkers are grouped together.

Status: Basic model w/ Gibbs sampler implemented in R
Needs: Simulations, (maybe) better sampler/port to Julia, write-up

##### Acquisition: distributional learning with talker variation #####

Aim is to show that it's feasible to learn multiple talkers' generative models simultaneously.  This is a straightforward (haha) extension of a nonparametric clustering model to have a clustered prior as well.

Status: TODO
Needs: Work out math, write sampler, do simulations

#### Inferring prior beliefs from lots of adaptation data

By varying the statistics of categories (e.g. mean/variance of b/p VOT), and fitting a belief updating model to the resulting adaptation data, it should be possible to infer the prior beliefs that people have about which cue distributions are more or less likely.

This is contrasted with an alternative approach which is to measure the range of talker variability that's actually out there in the world.  Linking that variability to listeners beliefs depends on assumptions about how experience shapes prior beliefs, so measuring the prior beliefs directly (or as direct as possible, via _listeners'_ behavior) is an important complement.

Status: Preliminary simulations done and [written up](https://bitbucket.org/dkleinschmidt/mtadapt-bp-sup-unsup/branch/cmcl-modeling-results)
Needs: Alternative modeling strategies (fitting category boundaries separately with conjugate belief updating; fix prior expectations)

#### Adaptation across levels of representation:

Aim is to develop a link between models of sensory adaptation (like Stocker and Simoncelli, 2006) and make connections with both efficient coding ideas _and_ the higher-level belief updating models.  This is in service of the overarching point that adaptation is a basic part of sensory systems that need to make efficient use of limited neural/informational resources.  It's also a critical bridge (at least at the conceptual level) between behavioral work/modeling and the imaging projects.

Status: TODO
Needs: Work out math and basic idea even...

### Behavioral experiments

#### Recalibration/selective adaptation

These experiments are all variations on classic speech adaptation (recalibration, etc.) paradigms.

##### Online replication of Vroomen et al. (2007) #####

Replicated effects of incremental recalibration and selective adaptation, and verified that the web-based paradigm works for these sorts of studies.

Status: done/published

##### Extension of V07 paradigm to intermediate conditions #####

To test whether belief-updating predictions of _continuum_ between recalibration and selective adaptation hold up.

Status: done/published

##### High-variance recalibration/selective adaptation #####

Prediction is that negative aftereffects (selective adaptation) is due to sensitivity to _variance_ of cue distributions, so exposing listeners to high variance distributions---rather than a single repeated stimulus---should make selective adaptation weaker (and the eventual decline of recalibration slower and/or weaker).

However, this isn't what we found.  Post-hoc simulations suggest that at reasonable levels of sensory noise, very little effect of variance is actually _expected_ (at the levels of category variance that are feasible in a study).

Status: experiments run and data analyzed.  presented at CUNY 2012 and quickly forgotten.
Needs: simulations, coordinate w/ Arty, write-up

#### Unsupervised vs. supervised adaptation

Does information about the talker's intended category help with adaptation?

##### Slow #####

Listeners hear a distribution of sounds, which may all have minimal pair response options (unsupervised) or have a mix of trials with minimal pair and non-minimal pair response options (supervised).

Status: Experiment run, data analyzed, written up for cog sci/CUNY 2015.
Needs: (maybe) longer write-up

##### Fast

Listeners hear an ambiguous b/p (etc.) with response options that label it as /b/ or /p/.  Then are tested on the whole continuum with minimal pair response options.

Status: TODO
Needs: experiment back end finished

#### Adaptation to different category statistics ####

Complements belief updating modeling about inferring population priors.  Idea is to just throw a ton of different combinations of mean/variance out on MTurk and see what happens.

Status: TODO
Needs: experiment back end finished

#### Estimating within- vs. between-talker vowel production variability (Cory Bonn) ####

We have productions from different talkers, many repetitions of each vowel in neutral "hVd" contexsts as isolated words and in sentence contexts.  This will allow us to estimate the level of within- vs. between-talker variability in different vowel categories, in order to assess how easy distributional learning would be if it trield to capture talker variation.

Productions need to be analyzed and processed.  Some of this is automated, but the alignment isn't great and needs to be checked by hand (or cleaned up by machine).

Status: productions collected from NNN talkers, run through forced alignment + formant extraction pipeline, partially hand corrected by RA
Needs: final corrections/processing, data analysis, write-up

### Imaging

#### Re-analysis of Blumestein et al. (2005)

Efficient coding: neural representations for within-category differences in sound ought to be more similar (even in low-level representations), and indeed they are, quite robustly.

Status: preliminary analyses completed.
Needs: finalized analyses and to be written up.

#### Adaptation to VOT distributions

First order question is: can we find evidence that adaptation changes low-level neural representations of speech sounds?  Follow-up questions are

* How do representations change when there are multiple talkers?  Can listeners maintain separate representations?
* What happens when the talker _switches_ after adaptation is achieved?  Do representations adjust rapidly, or is there some delay?

Status: pilot subject run.
Needs: More subjects, multi-talker stimuli, analysis, write-up

#### How does the brain learn non-linearally separable categories?

People were trained to perform a non-linearally separable object categorization task, with a "cloud and ring" or prototype-similarity structure.  We measured BOLD responses to different stimuli (computer generated animal images) before and after training.

Status: subjects run, analyses underway.
Needs: final analyses, write-up

# Feedback from Florian

## 3/16/2015

* Organize "inferring prior" thinking.
* Intro + framing: 
    * establishing of general problem(s)
    * take seriously "speech as model organism"
    * e.g. could become Frontiers/TiCS paper
    * don't worry about avoiding redundancy
    * 10-15pp of overview of striking problems
    * one or two big questions, descript wrt speech and drawing on other things
    * (raises question: how much is speech like other things?)
* modeling generalization
    * focus on where system fails...
    * (not just "fails in experiment")
* only behavioral + computational, or add neural too
    * pro: theoretical integration, 

# Status 

## May 17 2016

Defense date is __August 9__, which means final version must be approved by __July 18__, and so provided to committee by __July 11 at the latest__. Earlier because I'll want feedback on things. That gives about one to one and a half months. 

The status of the big things that are going in are:

1. Introduction + background: not started
2. Ideal adapter paper: written. likely needs to be modified: split up into chapters, re-written in parts.
3. Selective adaptation paper: written. can be inserted as a chapter pretty much as is, most likely. there's some redundancy with the selective adaptation bits in PR.
4. Inferring prior paper: (partially) written, additional data collected but not analyzed
5. Vowels corpus analysis (Structure of variability in the world, and consequences for adaptation): preliminary analysis of marginal distributions.
6. Modeling cross-talker generalization (two talkers, same or different generative model): not started.

It's unclear how much re-organization of the existing bits will be required. But that maybe can wait. Much of the work is going to be in writing up the new stuff and the introduction. The vowel corpus is going to take work for the TiCS paper anyway. That's meant to be outlined/bullets by this week.

### Organization

#### With re-working papers

1. Introduction:
    * perception as inference under uncertainty and non-stationarity. 
    * speech as a model organism. 
    * background on lack of invariance, and why that makes speech an interesting test case. 
    * how speech might be the same or different.
2. Ideal adapter framework 
    * theory from Part 1
    * (or merge w/ prev/intro or next/modeling chapters)
3. Rapid adaptation to novel talkers 
    * modeling+experiment from Part 1
4. The role of the prior: familiar and similar talkers.
    * Part 2
    * potentially include two-talker modeling?
5. Probing listeners' prior beliefs (could merge w/ last chapter)
6. The structure of variability in the world, and its consequences for adaptation.
    * vowels data. is grouping informative, and how much? does it help with adaptation? 
    * do you actually _need_ to adapt to each talker?
7. Conclusion: broader relevance of this framework (part 3 + selective adaptation paper?)

#### With using papers as is

1. Introduction
2. Ideal adapter paper
3. Selective adaptation paper
4. Inferring prior beliefs
5. How much structure is there and what good does it do 
6. Modeling simultaneous adaptation to multiple talkers
7. Conclusion

## May 23

* Goals: 
    * indexical/joint inference based on vowels data.
* Output: 
    * first cross-validated analyses complete. 
    * write up of conclusions for indexical inference
    * partial write-up of conclusions for indexical influence on vowel recognition

## May 30

* (Traveling from mid-week.)
* Goals
    * Submit draft of indexical inference chapter to committee
    * [done] Submit ToC to committee
    * Begin analysis of consonant data
* Progress
    * preliminary analysis of separate means dist learning data
    * analysis of nsp vowels data sub-sampled to same number of talkers
    * TOC

## June 6

* What's left to do
    * Intro + Conclusion 
    * put papers into thesis format
    * chapter on structure of variation:
        * write out conceptual points I'd want to make
        * wrap up analyses and results with respect to these points
        * write results
        * write discussion and conclusion
        * write intro
    * chapter on inferring prior
        * integrate existing analysis/writing from cog sci paper into Rmd for follow-up
        * analysis:
            * regression? having trouble getting those to converge...maybe `rstanarm`
            * category boundaries in each condition (compare across experiments, accounting for trial)
            * predict category boundaries from inferred prior distributions from exp 1
        * modeling:
            * model with correlation between means
* Goals
    * analyze consonant production data and have a draft of that chapter to send to committee
    * do analyses of expt2 data for dist learning, write up, update conclusions/discussion, and send draft to committee
* Progress
    * Classifier and KL analysis of VOT data
    * Partial write up of results, discussion RE differences in s/S and d/t adaptation

## June 13

* Goals
    * Chapter on socio-indexical production data:
        * Bullet point outline: conceptual points to address. Might need to do separately for chapter/TopiCS paper.
        * Choose set of results to actually write up/discuss
        * Write results + methods (take from existing stuff where possible)
        * Write discussion
        * Write introduction

### Status

* Introduction: minimal outline.
* Vowel/VOT: 
    * intro partially outlined (background WIP). __don't worry too much about this because it's probably going to take some re-writing. just get down some kind of draft__
    * methods: written.
    * results: still in report, need to __decide on a set of results__ and move into chapter.
    * discussion: partially outlined.
* Infer prior
    * intro: cog sci intro is pretty good. could benefit from __extended background__ on distributional learning (connect w/ acquisition) and __prior work__ on restricted adaptation (at the moment just briefly mention Sumner and Idemaru&Holt papers.). also need to revise to __intro two experiments__
    * experiment 1 and model are written up. revise to reflect that this is experiment 1 now.
    * experiment 2 methods, results, and modeling: __TODO__.
    * discussion: need to make a list of the points to make here. probably __cog sci__ plus __caveats about other sources of constraints__ (e.g., production)


* TODO/Did
    * Mon 13
        * vowel/vot: 
            * conceptual points and intro
            * methods bullets
            * found bug (missing tokens from improper grouping)
    * Tue 14
        * Organize list of sections for diss
        * Outline introduction for diss
        * debug missing tokens
    * Wed 15
        * Infer prior: Generate predictions based on prev model fits
        * Infer prior: draft discussion of model prediction results from exp 2
    * Thu 16
        * vowel/vot: move material to outline for diss chapter. discussion bullets. progress on intro/background
        * vowel/vot: bootstrap KL across talkers.
    * Fri 17
        * write down what i did last few days :)
        * corpus paper 
            * methods for corpus paper
            * read background papers
            * draft goals/intro bullets

## June 20

* Goals
    * Draft of talker variation paper
        * Write out conceptual points bullets
        * Discussion bullets
        * Expand intro bullets into prose
        * Expand discussion bullets into prose

### Status

* Talker variation chapter
    * Intro/background outlined, needs to be __written up__.
    * Methods: __done__.
    * Results: mostly __done__. need to write up __joint inference__ results (or cut).
    * Discussion: some bullets, needs to be __organized and fleshed out__
* infer prior chapter
    * see last week.
* Intro chapter
    * some notes/outline

### Done list

* Monday
    * expanded intro outline
    * read a bunch of papers on indexical classification
    * wrote up KL results + figures
* Tuesday
    * run vot/vowel classifiers and make figures
    * debug classifier code and packages
* Wednesday
    * puzzle over + write up classifier accuracy results
    * analyze advantage of dialect
    * write up dialect results
* Thursday
    * write up dialect specific errors
    * finish writeup of dialect stuff
    * run indexical classifier analysis
    * write up indexical classifier analysis
    * run joint classifier analysis

## June 27

## July 4

* Collate into single document, format, and check.

## July 11
