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
@Newman2001; @Hillenbrand1995]. This has long been recognized as a central
challenge to successful speech perception [cf. the "lack of invariance",
@Liberman1967]. Third, this cross-situational variability is _highly
structured_. Individual talkers serve as contexts which correspond to relatively
stable cue distributions [@Heald2015].  Moreover, talkers cluster into groups
based on factors like gender, regional origin, class, etc. [@Clopper2005; @Heald2015; @Labov1972; @Labov2005; @Eckert2013, among others].

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
and NNN, existing theoretical approaches to speech perception miss important
aspects of variability in speech perception, and cannot account for the full
range of strategies that listeners employ to cope with this variability.  Thus,
the main goal of this dissertation is to develop a theoretical framework for
speech perception that takes both _variation_ and _structure_ seriously.  This
framework motivates further empirical and modeling work. Later chapters take
first steps in a number of these directions.

## Summary of chapters

Chapter NNN introduces the _ideal adapter_, a novel computational framework for
understanding speech perception in the face of non-stationarity. This framework
offers a solution to the longstanding problem of talker variability in speech
perception, providing an explanation for the range of strategies that listeners
use to cope with variability in the statistics of speech sounds. These
strategies range from rapidly adapting to unfamiliar talkers to recognizing
familiar talkers and generalizing to talkers who are similar to previously
encountered talkers. The central idea of this framework is that because of the
nature of the speech signal, robust speech perception requires that listeners
simultaneously infer _what_ is being said, _how_ linguistic units are realized
probabilistically in the current context, and _who_ the current talker is, in
relation to other talkers. Formalizing this as hierarchical probabilistic
inference, this chapter shows that a simple belief updating model captures a
range of rapid adaptation phenomena, and effectively predicts adaptation in
novel, previously untested conditions. The rest of this chapter lays out, at a
conceptual level, how treating speech perception as a hierarchical inference
process unifies the large and often superficially contradictory literature on
how listeners cope with talker variability. At the same time, it develops novel
predictions that open up directions for future work. The chapter closes by
considering the broader relevance of this framework speech perception and
language comprehension more broadly. This chapter was published as
@Kleinschmidt2015.

Chapter NNN explores the connection between distributional learning, sensory
adaptation, and speech perception. One of the surprising findings from Chapter
NNN is that _selective adaptation_, a phonetic adaptation phenomenon typically
attributed to fatigue of acoustic-phonetic feature detectors, might better be
explained as a process of _distributional learning_, where listeners update
their beliefs about the underlying distributions of acoustic cues. General
sensory adaptation, like phonetic selective adaptation, was also historically
treated as the fatigue of feature detectors, but recent work, paralleling that
of Chapter NNN, suggests that sensory adaptation, too, might better be thought
of as a process of distributional learning. This chapter develops this parallel
further, reviews the developments in our understanding of sensory adaptation,
and critically re-examines evidence that phonetic selective adaptation is _not_
distributional learning. This chapter was published as @Kleinschmidt2015b.

Chapter NNN investigates the role that listeners' prior expectations play when
adapting to an unfamiliar talker. The ideal adapter predicts that adpatation
should be _constrained_ by listeners' prior experience with how much and in what
ways talkers vary in the cue distributions that they produce. This chapter
presents two experiments. The first experiment shows that, as predicted,
listeners do not adapt as well to a talker whose "accent" is outside the range
of normal variation across talkers. Next, this chapter shows how we can use the
computational framework of the ideal adapter to work backwards from these
contraints to infer what listeners' prior expectations are for an unfamiliar
talker. The second experiment validates the findings of the first, using more
extreme distributions, and also validates the predictive accuracy of the prior
beliefs inferred on the basis of the first experiment.

Chapter NNN goes the opposite direction from Chapter NNN, examining the
structure in how talkers actually vary in order to enable better predictions
about what groupings listeners might pick up on. The ideal adapter predicts that
listeners pick up on structure of how talkers vary in the world, and use this to
guide adaptation. The particular structure that listeners are predicted to
extract depends on how informative different groupings of talkers are about
their underlying cue distributions.  This chapter uses the computational tools
of ideal listener/adapter approaches to quantify the informativity of
socio-indexical grouping variables for different phonetic categories and
cues. Having such data enables more specific predictions about what kinds of
grouping listeners should track, and hence how they can best generalize from
their experience with one talker to another.

Finally, chapter NNN provides brief concluding remarks.

