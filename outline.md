# Introduction: perception in an uncertain and nonstationary world

## The general problem, and an outline of a solution

* Problem of perception: 
    * want to infer "latent variables" (facts about the world)
    * **uncertain** world: facts about the world only probabilistically related to observables
    * **nonstationary** world: probabilistic relationships themselves change
* Big questions: 
    * How to cope with nonstationarity?  Existing theories tend to focus on detecting changes and learning quickly.
    * Link between nonstationarity and adaptation
* The proposal: 
    * Perception requires inference not just about latent variables, but about _generative model_ that links observations and latent variables.
    * Moreover, requries inference about the _underlying structure in the variability of the generative models themselves_ (learn a "generative model for generative models").

## Speech as a model organism: the ideal adapter framework

* Introduction of ideal adapter paper
* some or all of the theory/modeling outline from Part I


# Belief updating, recalibration, and selective adaptation

## Recalibration

* section from ideal adapter paper

## Selective adaptation

* section from ideal adapter paper.
* __could merge with last subsection__

## Never the 'twain shall meet?

* section from ideal adapter paper: intermediate conditions


# The role of variability

* What role does variability play in speech perception?
* Set up with stuff from Part III of the ideal adapter paper
    * abstractionist/episodic debate
    * subphonetic variability
* Section that was cut from the selective adaptation paper on "why track variance" (cue reliability)

## Recalibration: shift or relaxation?

* section from ideal adapter paper

## Real and perceived variability

* studies on high-variance adaptation/recalibration
    * Vroomen paradigm (CUNY2012 poster)
    * Arty selective adaptation paradigm
    * maybe Clayards et al., 2008.
* simulations to make point that it's _hard_ to detect effect of variance using these paradigms.
* possibly modeling of sensory uncertainty + belief updating


# Talkers and types of talkers: beyond belief updating

* Part II of the ideal adapter paper, more or less

## Talker-specificity

* sections from ideal adapter paper, Part II

## Generalization across talkers

* sections from ideal adapter paper, Part II

## Hierarchical belief updating: a model

* modeling of generalization experiments by itself here after basic theoretical discussion.  Or could be folded into the above sections as appropriate


# Is adaptation _supervised_ or _unsupervised_ learning?

* Classical paradigms rely on supervision 
    * recalibration induced by disambiguating ambiguous sound with visual or lexical cues)
* But can also occur as unsupervised learning
    * Munson, Clayards
    * Cue combination argument from modeling above
* Distributional learning: can be either supervised or unsupervised (or semi-supervised, [Gibson, Rogers, and Zhu, 2013](http://dx.doi.org/10.1111/tops.12010))

## A partially supervised adaptation paradigm

* Based on Munson.
* Uses response options to provide labels (beach/peas vs. beach/peach).
* No effect of labels

## Is it the labels

* TODO: study on rapid recalibration with response option labels.

## Role of informativity of labels

* TODO: model to show that prior + distributions provides enough information, labels don't actually add anything in original design.


# Measuring prior beliefs

* It's hard to do:
    * Could measure distribution of "accents" across _talkers_ (requires ASR technologies + large amounts of data from many individual talkers)
    * But I think people are pulling something out of this that's not just a reflection of the input
* Alternative strategy: measure what _listeners_ do.
    * Degree of adaptation to a particular set of statistics might reflect prior probability
    * By just throwing a lot of different distributions at people and seeing what they do might be able to get a measure of the prior beliefs of the _population_ of listeners.

## VOT shifts

* Adapt easily to small shifts, but harder for large shifts
    * Qualitative figures to show that category boundaries lie between optimal and prior (from Kronrod et al.)
* Model with belief updating model to infer:
    * the prior expected category means and variances (ideally)
    * the strength of prior beliefs, fixing expected means+variances (more reasonable).

## "Random" distributions

* TODO: large-scale turk study with pseudo-random distributions of cues.
    * Vowels, or VOT? Or something else?


# Broader relevance of the ideal adapter

* part III.
* ideally, will include new modeling and data on acquisition: cross-talker variability from vowels.


# Sensation, perception, and adaptation

## Sensory adaptation, dumb and smart

* the position paper on selective adaptation, or the first part, 
* possibly expanded with more references and theoretical discussion about how/whether it's possible to distinguish fatigue and "smart" adaptation

## Speech perception as a model organism: selective adaptation

* the specifically speech parts of selective adaptation paper
* (possibly) modeling of reaction time effects etc.

