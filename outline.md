# Introduction: perception in an uncertain and nonstationary world

## The general problem, and an outline of a solution

* Problem of perception:
    * want to infer "latent variables" (facts about the world)
    * **uncertain** world: facts about the world only probabilistically related
      to observables
    * **nonstationary** world: probabilistic relationships themselves change
* Big questions:
    * How to cope with nonstationarity?  Existing theories tend to focus on
      detecting changes and learning quickly.
    * Link between nonstationarity and adaptation
* The proposal:
    * Perception requires inference not just about latent variables, but about
      _generative model_ that links observations and latent variables.
    * Moreover, requries inference about the _underlying structure in the
      variability of the generative models themselves_ (learn a "generative
      model for generative models").

## Speech as a model organism:

* Speech perception provides a good "model organism" to investigate this
    * It's a problem of _inference under uncertainty_ (latent variables are
      probabilistically realized by sensory signals)
    * The statistical properties vary across situations (_non-stationarity_):
      talker variability/"lack of invariance"
    * Cross-situation variability is _structured_: individual talkers and groups
      of talkers.
    * Listeners are _sensitive_ to this structure and _use_ it to guide their
      inferences about the underlying linguistic categories
* Importantly, we know something about both the _linguistic_ and _indexical_
  structure of speech variability. (e.g., to a first order of approximation,
  what the categories and relevant cues are, on the one hand, and how the
  realizations vary across talkers and within groups).
    * What we _don't_ have is a good theoretical framework for linking these all
      together.
    * And, relatedly, the kind of quanitative data on the structure of
      variability that's required to link that variability with listeners'
      strategies for dealing with it

# The ideal adapter framework

* Kleinschmidt, D. F., & Jaeger, T. F. (2015). Robust speech perception:
  Recognize the familiar, generalize to the similar, and adapt to the
  novel. _Psychological Review_, 122(2), 148–203. doi:10.1037/a0038695
* This paper has three parts:
    1. Introduce the computational framework, a model of rapid adaptation to an
       unfamiliar talker, and four related studies that test the model on data
       previously published by Vroomen et al. (2007) (1-3), and on a novel
       experiment that replicates and extends that work (4).
    2. Lay out the importance of prior beliefs: how they are formalized, why
       they're necessary, and what the existing empirical support is for them.
    3. Broader implications of this framework: exemplar vs. abstractionist
       debate, role, other approaches to the lack of invariance, and how it
       relates to adaptation and learning outside of speech perception.
* ((These could, potentially be broken out into individual chapters; they're
  written more or less in that way already.))

# What do you believe about an unfamiliar talker?

* This work uses a belief-updating model to work backwards from how well
  listeners adapt to different accents (cue distributions) to determine what
  their prior beliefs are.
* There are two behavioral experiments using the same VOT distributional
  learning paradigm as Clayards et al. (2008)
    1. Manipulates the mean VOT of a bimodal distribution, keeping the
       separation between the two clusters constant.
    2. Manipulates the means of the two clusters independently
* Modeling infers prior beliefs that fit listeners' classification functions in
  the first experiment, and validates against data from the second experiment.
* Find that
    1. Listeners adapt less well to distributions that deviate from a "typical
       talker"
    2. At the group level, constraints on adaptation revealed by behavior are
       quantitatively consistent with belief updating that starts from prior
       beliefs that are the same across all listeners
    3. These prior beliefs are close---but not identical---to the variability
       across talkers in VOT.

# The utility of grouping talkers for understanding speech

* How much does socio-indexical grouping (by age, gender, regional origin, etc.)
  actually matter for speech comprehension?
    * Ideal adapter predicts that a particular socio-indexical grouping is
      important for listeners to track _to the extent_ that it's informative
      about phonetic cue distributions.
    * We know from sociolinguistics that there _are_ systematic differences
      between groups of talkers, on many different variables.
    * But: the informativity of these differences for _speech recognition_ has
      not been quantified.
    * Use an ideal observer model to ask how informative is socio-indexical
      grouping at different levels, based on multi-talker production data from
      different sources.
* Given each group's distributions of cues for each linguistic category, ask how
  well you can infer each of the following:
    1. The linguistic category (when group is _known_)
    2. The linguistic category and socio-indexical category simultaneously
    3. The socio-indexical group (when linguistic category is _unknown_).
* Compare with talker-specific distributions, and grouping-ignored (marginal)
  cue distributions.
* Two kinds of data:
    * Vowel F1/F2, from Nationwide Speech Project. 48 talkers, 4 each per
      combination of sex (M/F) and dialect region (Midland, North, New England,
      West, South, and Mid-Atlantic), each producing 5 tokens of each vowel.
    * Stop consonant VOT (source TBD). Looks like I can get sex (M/F) at least,
      if not some other grouping. But the variability will presumably be less.

# Selective adaptation

* Kleinschmidt, D. F., & Jaeger, T. F. (2015). Re-examining selective
  adaptation: Fatiguing feature detectors, or distributional learning?
  _Psychonomic Bulletin & Review_, In press. doi:10.3758/s13423-015-0943-z
* Critical review of literature on selective adaptation in speech, in light of
  ideal adapter work and the last few decades of work on non-linguistic sensory
  adaptation (using neural and psychophysical approaches).
* Argues that the commonly held view that selective adaptation in speech is a
  process of feature-detector fatigue is poorly supported.

# Conclusion
