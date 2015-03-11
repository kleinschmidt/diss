# Dissertating notes

## Projects

### Modeling

#### Belief updating model of recalibration/selective adaptation

##### Variation: belief updating with sensory uncertainty #####

TODO: Feldman + Belief updating

#### Ideal adapter framework

Hierarchical model: learn distributions _and_ prior over generative models

#### Modeling generalization as hierarchical belief updating

TODO

#### Inferring prior beliefs from lots of adaptation data

By varying the statistics of categories (e.g. mean/variance of b/p VOT), and fitting a belief updating model to the resulting adaptation data, it should be possible to infer the prior beliefs that people have about which cue distributions are more or less likely.

This is contrasted with an alternative approach which is to measure the range of talker variability that's actually out there in the world.  Linking that variability to listeners beliefs depends on assumptions about how experience shapes prior beliefs, so measuring the prior beliefs directly (or as direct as possible, via _listeners'_ behavior) is an important complement.

#### Adaptation across levels of representation:

TODO

Aim is to develop a link between models of sensory adaptation (like Stocker and Simoncelli, 2006) and make connections with both efficient coding ideas _and_ the higher-level belief updating models.  This is in service of the overarching point that adaptation is a basic part of sensory systems that need to make efficient use of limited neural/informational resources.  It's also a critical bridge (at least at the conceptual level) between behavioral work/modeling and the imaging projects.

### Behavioral experiments

#### Recalibration/selective adaptation

These experiments are all variations on classic speech adaptation (recalibration, etc.) paradigms.

##### Online replication of Vroomen et al. (2007) #####

Replicated effects of incremental recalibration and selective adaptation, and verified that the web-based paradigm works for these sorts of studies.

##### Extension of V07 paradigm to intermediate conditions #####

To test whether belief-updating predictions of _continuum_ between recalibration and selective adaptation hold up.

##### High-variance recalibration/selective adaptation #####

Prediction is that negative aftereffects (selective adaptation) is due to sensitivity to _variance_ of cue distributions, so exposing listeners to high variance distributions---rather than a single repeated stimulus---should make selective adaptation weaker (and the eventual decline of recalibration slower and/or weaker).

However, this isn't what we found.  Post-hoc simulations suggest that at reasonable levels of sensory noise, very little effect of variance is actually _expected_ (at the levels of category variance that are feasible in a study).

#### Unsupervised vs. supervised adaptation

Does information about the talker's intended category help with adaptation?

##### Slow #####

Listeners hear a distribution of sounds, which may all have minimal pair response options (unsupervised) or have a mix of trials with minimal pair and non-minimal pair response options (supervised).

##### Fast

Listeners hear an ambiguous b/p (etc.) with response options that label it as /b/ or /p/.  Then are tested on the whole continuum with minimal pair response options.

### Imaging

#### Re-analysis of Blumestein et al. (2005)

Efficient coding: neural representations for within-category differences in sound ought to be more similar (even in low-level representations), and indeed they are, quite robustly.

#### Adaptation to VOT distributions

First order question is: can we find evidence that adaptation changes low-level neural representations of speech sounds?  Follow-up questions are

* How do representations change when there are multiple talkers?  Can listeners maintain separate representations?
* What happens when the talker _switches_ after adaptation is achieved?  Do representations adjust rapidly, or is there some delay?

#### How does the brain learn non-linearally separable categories?

People were trained to perform a non-linearally separable object categorization task, with a "cloud and ring" or prototype-similarity structure.  We measured BOLD responses to different stimuli (computer generated animal images) before and after training.

