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
