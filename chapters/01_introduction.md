# Introduction

Perception is one of the basic components of intelligent behavior. In order to
behave intelligently, an agent (person, animal, robot) needs to adjust their
behavior based on the state of the world. But agents do not have direct access
to behaviorally relevant facts about the state about the world. Rather, they
receive _sensory signals_, transmitted by sense organs, and the problem of
perception is to extract meaningful information from these signals. The mapping
from sensory signals to meaningful facts about the world is not
straightforward. There are, for instance, infinitely many three dimensional
shapes that generate the same retinal image. In this sense perception is a
process of _inference under uncertainty_, of determining which possible state of
the world best explains the received signals [@Helmholtz1924].

One fruitful tradition for understanding how perception works has been to
characterize this inference problem itself, since the constraints imposed by
this problem will shape the design and implementation of any system that solves
it successfully [@Marr1982; @Knill1996]. A central motivation behind this
tradition is that the mind is shaped by---and hence adapted to---the world it
has to function in.  In this view, perceptual inference depends in large part on
knowledge about the statistical properties of sensory signals. The statistics of
the sensory world determine, for instance, which aspects of sensory signals are
informative and which are noise.  Indeed, perceptual sensitivities---measured
both neurally and behaviorally---can in many cases be directly derived from the
relevant sensory statistics
[@Attneave1954; @Atick1990; @Olshausen1996; @Smith2006; @Lewicki2002; @Simoncelli2001; @Field1987].

The statistics of the sensory world also determine how any particular sensory
signal should be _interpreted_. At the most basic level, the overall light level
determines which signals correspond to "dark" and which to "light". This leads
to a corrolary to the link between sensory statistics and the perceptual system:
in a world where sensory statistics change from one situation to the next, the
perceptual system must _adapt_ to these changes. Perceptual systems are, in
fact, extremely adaptable, and this adaptation has been linked to changes in
sensory statistics
[@Barlow1989a; @Brenner2000; @Fairhall2001; @Gutfreund2012; @Sharpee2006; @Webster2005; @Wei2012; @Kohn2007]. This
work suggets that, at the very least, perceptual systems are _tracking_ changes
in sensory statistics.

Like perception itself, adaptation can be thought of as a kind of inference,
inference about the _statistical properties_ of the sensory world
[@Fairhall2001; @Seydell2010]. Each sensory signal provides some information
about the underlying statistics of the current environment, and together are
more or less well-explained by different possible distributions of sensory
signals, much like each signal itself is more or less well-explained by
different states of the world. And, just like perceptual inference depends on
statistical properties of the world, this higher-level inference depends on
higher-order statistical properties of the world.

This rasises the central question addressed by the work reported here: is
_tracking_ the best way to think about how perceptual systems cope with a
dynamic world? Existing theories tend to focus on either continuously tracking
sensory statistics [@Fairhall2001] or detecting changes and re-learning
statistics in response [e.g., @Courville2006; @Gallistel2001; @Dayan2008].  The
particular way that the statistics of the sensory world vary determines how the
perceptual system can best cope with these changes. Continuous tracking is the
best you can do when statistics change continuously and unpredictably. When
changes in statistics are caused by differences between contexts, but the
contexts themselves vary in unpredictable ways, the best you can do is to detect
context changes and re-learn the context-specific statistics when one
occurs. Both of these strategies can be thought of as _flat_ learning models,
which do not learn any cross-context structure.

However, in a _multi-context_ world, this kind of flat learning is
sub-optimal. If there's a chance you will encounter a particular context again,
you should not forget it as soon as you enter a new context
[cf. @Qian2012]. Rather, by learning how statistical contingencies vary across
contexts, you can take advantage of prior experience with a context when you
next encounter it. Agents do, in fact, often encounter the same context
repeatedly, and there is abundant evidence that when the context changes,
learners do not forget old statistics
[@Thanellou2011; @Bouton1983; @Sissons2009; @Kording2007a; @Knudsen1998; @Linkenhoker2005].
A multi-context world thus requires inference at three levels. First, agents
must make inferences about behaviorally relevant properties of the world. These
inferences depend on knowledge of the _generative model_ that links those
properties with observable sensory signals. Second, in a non-stationary world,
agents must also make inferences about the current context's generative
model. Third, in a multi-context world where cross-context variation is
_structured_, agents must also infer which context they are currently in, and
how it relates to previous contexts.

## Speech perception as a model organism

While the questions addressed in this work apply to perception generally, it focuses on speech perception as a test case or "model organism" for understanding perception in a variable world. Speech perception makes for a good model organism in large part because as a perceptual problem it exemplifies the three levels of inference required for perception in a variable but structured world.

First, Each phonetic category is realized as a _distribution_ of acoustic cues 
[e.g., @Lisker1964; @Peterson1952; @Allen2003; @Newman2001]. This means that 
speech perception can be understood and modeled as problem of inference under
uncertainty [@Clayards2008; @Norris2008]. Second, the statistical properties of
speech are _non-stationary_, and the distributions of acoustic cues change from
situation to situation [@Peterson1952; @Allen2003; @Jongman2000; @McMurray2011a;
@Newman2001; @Hillenbran1995]. This has long been recognized as a central
challenge to successful speech perception [cf. the "lack of invariance",
@Liberman1967]. Third, this cross-situational variability is _highly
structured_. Individual talkers serve as contexts which correspond to relatively
stable cue distributions [@Heald2015].  Moreover, talkers cluster into groups
based on factors like gender, regional origin, class, etc. [@Clopper2005; 
@Heald2015; @Labov1972; @Labov2005; @Eckert2013; among others].

This structure is not just present in the world. Listeners are exquisitely
_sensitive_ to this structure, and _use_ it to guide their inferences about the
underlying linguistic categories [@Johnson1999; @Strand1996; @Hay2006a; 
@Hay2010; @Creel2011; @Creel2011a; @Creel2008; @Niedzielski1999; @Nygaard1998; 
@Sumner2009]. On a practical level, we know a great deal about both the
_linguistic_ and _indexical_ structure of the speech signal (e.g., to a first
order of approximation, what the categories and relevant cues are, on the one
hand, and how the realizations vary across talkers and within groups). This
enables us to probe how speech perception copes with different kinds of
variation at a _behaviorally relevant, ecologically valid_ level.

What is currently lacking in the understanding of speech perception is a
theoretical framework for linking these together. As I discuss in Chapters NNN
and NNN, existing theoretical approaches to variation in speech perception miss
important aspects to the variation that actually exists, and cannot account for
the full range of strategies that listeners employ to cope with this variation.
Thus, the main goal of this dissertation is to develop a theoretical framework
for speech perception that takes both _variation_ and _structure_ seriously.

* Importantly, unlike other perceptual domains <!-- I dunno aboout
  this... -->, we know quite a bit about both the _linguistic_ and
  _indexical_ structure of speech variability. (e.g., to a first order of
  approximation, what the categories and relevant cues are, on the one hand,
  and how the realizations vary across talkers and within groups). Enables us to probe how speech perception copes with different kinds of variation at a _behaviorally relevant, ecologically valid_ level.
    * What we _don't_ have is a good theoretical framework for linking these all
      together. <!-- maybe here is a good place for points in notes below on prev. work? or at least a pointer to where it's reviewed in later chapters -->
    * And, relatedly, the kind of quanitative data on the structure of
      variability that's required to link that variability with listeners'
      strategies for dealing with it.

* Overall point to make:
    * Need to take variability _seriously_ in any model of speech perception. It's not a _bug_ but a _basic feature_ of language, and as such is a fundamental constraint that the speech perception system must be adapted to in order to function. Part of what it means to take variability seriously is to understand what the nature and structure of that variability is, and how that structure not only challenges but also _supports_ robust speech perception.
    * The computational framework developed here treats _structured variability_ as a central part of the problem/task of speech perception. Surprisingly, this alone unifies and makes sense out of a lot of confusing and apparently contradictory work.
    * Moreover, this framework opens doors for new directions of research on speech perception, some of which I start to explore in later chpaters. These point to underexplored connections between, e.g., perception and production, cognitive and sociolinguistic approaches to language, and neural and computational levels of analysis of perception.
* Outline for chapters
    1. Introduce a computational framework for understanding speech perception in the face of non-stationarity. Develop a computational model for rapid adaptation, test it against existing and novel data. The idea of inference at multiple levels captures the whole range of strategies that listeners have been shown to use for dealing with talker variabiltiy. Review the consequences of this approach for speech perception and language comprehension more broadly.
    2. Distributional learning connects adaptation in speech peception with sensory adaptation more generally. Critically review evidence against distributional learning as a model for selective adaptation in speech, in light of a modern understanding of sensory adaptation.
    3. What do listeners expect from an unfamiliar talker? According to the ideal adapter, these expectations are vitally important to efficiently adapting to multiple, different talkers. But this efficiency is predicted to come at a cost when listeners encounter a talker whose accent falls outside the range they expect. Thus, an ideal adapter will _fail_ to fully adapt in some circumstances, and the particular constraints can be informative about the underlying expectations. Probe listeners __prior beliefs__ using distributional learning, and evaluate the extent to which they match what we know about the variability across talkers.
    4. Predict that listeners pick up on structure of how talkers vary in the world, and use this to guide adaptation. The particular structure that listeners are predicted to extract depends on how informative different groupings of talkers are about their underlying cue distributions.  Here we use the computational tools of ideal listener/adapter approaches to quantify the informativity of socio-indexical grouping variables for different phonetic categories and cues. Having such data enables more specific predictions about what kinds of grouping listeners should track, and hence how they can best generalize from their experience with one talker to another.



# NOTES

* Background
    * previous approaches to lack of invariance (maybe this goes in the chapter
      outline bit? ideal adapter addresses shortcomings of other approaches)
        * abstraction: strip away variability. a fantasy
        * normalization: auditory normalization strips out most of talker variability. can't handle _stylistic_ variability which is widespread.
        * exemplar/episodic: problems with generalization
        * learning models: lack principled ways for determining free parameters like learning rates. deeper problem: need to adjust learning rate to achieve balance of stability and plasticity.
