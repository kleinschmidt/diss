Perception is one of the basic components of intelligent behavior. In order to behave intelligently, an agent (person, animal, robot) needs to adjust their behavior based on the state of the world. But agents do not have direct access to behaviorally relevant facts about the state about the world. Rather, they receive _sensory signals_, transmitted by sense organs, and the problem of perception is to extract meaningful information from these signals. The mapping from sensory signals to meaningful facts about the world is not straightforward. There are, for instance, infinitely many three dimensional shapes that generate the same retinal image. In this sense perception is a process of _inference under uncertainty_, of determining which possible state of the world best explains the received signals [@Helmholtz1924].



* Perception is inference
    * Problem of perception:
        * want to infer "latent variables" (facts about the world). 
            * [@Helmholtz1924; @Knill1996]
        * **uncertain** world: facts about the world only probabilistically related
          to observables
            * noise in perceptual system [@Knill2004]
            * inherent ambiguity from generative process (inverse optics) [e.g., @Marr1982]
        * **nonstationary** world: probabilistic relationships themselves change
    * Tradition of "ideal observer". Mind is adapted to the world that it has to function in. We can understand a lot about the mind just by looking at the task it has to do and the structure of the world it exists in.
    * Perceptual sensitivities can be linked to statistical properties of the world [@Olshausen1996; @Smith2006; @Lewicki2002; @Simoncelli2001; @Field1987; @Brenner2000; @Fairhall2001; @Gutfreund2012; @Sharpee2006].
    * A corrolary: when statistical properties change, perceptual sensitivities should also change. [@Barlow1989a; @Webster2005; @Wei2012; @Kohn2007]
    * Can be viewed as inference at another level, inference about the _statistics_ of the current environment, or the _generative model_. [@Seydell2010]
    * Existing theories tend to focus on detecting changes and re-learning statistics in response. [e.g., @Courville2006; @Gallistel2001; @Dayan2008].
    * However: in a multi-context, this kind of flat learning is sub-optimal. If there's a chance you'll encounter a context again, you shouldn't forget it as soon as you enter a new context [cf. @Qian2012]
    * And there's abundant evidence that when the context changes, learners do not simply unlearn old statistics [@Thanellou2011; @Bouton1983; @Sissons2009; @Kording2007a; @Knudsen1998; @Linkenhoker2005].
    * A multi-context world thus requires inference at three levels. First, agents must make inferences about behaviorally relevant properties of the world. These inferences depend on knowledge of the _generative model_ that links those properties with observable sensory signals. Second, in a non-stationary world, agents must also make inferences about the current context's generative model. Third, in a multi-context world where cross-context variation is _structured_, agents must also infer which context they are currently in, and how it relates to previous contexts.
      <!-- not to imply that there's a strict segregation between _latent_ variables that are behaviorally relevant and _nuisance_ variables like the statistical properties of the world -->
* Speech perception as a model organism
    * Speech perception makes a good model organism for understanding how the perceptual system functions in a non-stationary but structured world.
        * It's a problem of _inference under uncertainty_ (latent variables are
          probabilistically realized by sensory signals)
            * [e.g., @Lisker1964; @Peterson1952; @Allen2003; @Newman2001; @Clayards2008; @Norris2008]
        * The statistical properties vary across situations (_non-stationarity_):
          talker variability/"lack of invariance" has long been recognized as a central challenge for the speech perception system.
            * [@Peterson1952; @Liberman1967; @Allen2003; @Jongman2000; @McMurray2011a; @Newman2001; @Hillenbran1995]
        * Cross-situation variability is _structured_: individual talkers function as contexts, within which statistical properties are relatively stable [@Heald2015]. Moreover, talkers cluster into groups based on factors like gender, regional origin, class, etc.
            * [@Clopper2005; @Heald2015; @Labov1972; @Labov2005; @Eckert2013; among others]
        * Most importantly, we know that listeners are exquisitely _sensitive_
          to this structure, and _use_ it to guide their inferences about the
          underlying linguistic categories
            * [@Johnson1999; @Strand1996; @Hay2006a; @Hay2010; @Creel2011; @Creel2011a; @Creel2008; @Niedzielski1999]
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
