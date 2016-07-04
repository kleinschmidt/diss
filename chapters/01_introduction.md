* Perception is inference
    * Problem of perception:
        * want to infer "latent variables" (facts about the world). 
            * helmholtz?
        * **uncertain** world: facts about the world only probabilistically related
          to observables
            * noise in perceptual system
            * inherent ambiguity from generative process (inverse optics)
        * **nonstationary** world: probabilistic relationships themselves change
    * Tradition of "ideal observer". Mind is adapted to the world that it has to function in. We can understand a lot about the mind just by looking at the task it has to do and the structure of the world it exists in.
    * Big questions:
        * How to cope with nonstationarity?  Existing theories tend to focus on
          detecting changes and learning quickly. [e.g., @Courville2006; @Gallistel2001; cf. @Qian2012]
        * Link between nonstationarity and adaptation
    * The proposal:
        * Perception requires inference not just about latent variables, but about
          _generative model_ that links observations and latent variables.
        * Moreover, requries inference about the _underlying structure in the
          variability of the generative models themselves_ (learn a "generative
          model for generative models").
* Speech perception as a model organism
    * Speech perception makes a good model organism:
        * It's a problem of _inference under uncertainty_ (latent variables are
          probabilistically realized by sensory signals)
            * [e.g., @Lisker1964; @Peterson1952; @Allen2003; @Newman2001; @Clayards2008; @Norris2008]
        * The statistical properties vary across situations (_non-stationarity_):
          talker variability/"lack of invariance"
            * [@Allen2003; @Jongman2000; @McMurray2011a; @Newman2001; @Hillenbran1995]
        * Cross-situation variability is _structured_: individual talkers and groups
          of talkers.
            * [@Clopper2005; @Heald2015; @Labov1972; @Labov2005; @Eckert2013; among others]
        * Listeners are _sensitive_ to this structure and _use_ it to guide their
          inferences about the underlying linguistic categories
            * [@Johnson1999; @Strand1996; @Hay2006a; @Hay2010; @Creel2011; @Creel2011a; @Creel2008; @Niedzielski1999; ]
    * Importantly, we know something about both the _linguistic_ and _indexical_
      structure of speech variability. (e.g., to a first order of approximation,
      what the categories and relevant cues are, on the one hand, and how the
      realizations vary across talkers and within groups).
        * What we _don't_ have is a good theoretical framework for linking these all
          together. <!-- maybe here is a good place for points in notes below on prev. work? or at least a pointer to where it's reviewed in later chapters -->
        * And, relatedly, the kind of quanitative data on the structure of
          variability that's required to link that variability with listeners'
          strategies for dealing with it.
* Overall point to make:
    * Need to take variability _seriously_ in any model of speech perception.
    * The computational framework developed here treats variability as a central part of the problem/task of speech perception, and in doing so unifies and makes sense out of a lot of confusing and apparently contradictory work.
    * Moreover, this framework opens doors for new directions of research on speech perception, some of which I start to explore in later chpaters. These point to underexplored connections between, e.g., perception and production, cognitive and sociolinguistic approaches to language, and neural and computational levels of analysis of perception.
* Outline for chapters
    1. Introduce a computational framework for understanding speech perception in the face of non-stationarity. Develop a computational model for rapid adaptation, test it against existing and novel data. The idea of inference at multiple levels captures the whole range of strategies that listeners have been shown to use for dealing with talker variabiltiy. Review the far-reaching consequences of this approach for speech perception and language comprehension more broadly.
    2. Distributional learning connects adaptation in speech peception with sensory adaptation more generally. Critically review evidence against distributional learning as a model for selective adaptation in speech, in light of a modern understanding of sensory adaptation.
    3. What do listeners expect from an unfamiliar talker? Probe listeners __prior beliefs__ using distributional learning, and evaluate the extent to which they match what we know about the variability across talkers.
    4. How informative are socio-indexical variables like age, gender, dialect, etc. about the structure of variability in talkers' cue distributions? This is a first step in addressing a need for data on the _structure_ of talker variability, a need that is identified by the ideal adapter framework. Having such data enables predictions about what kinds of grouping listeners should track, suggesting future studies on cross-talker generalization with different contrasts and cues.



# NOTES

* Background
    * previous approaches to lack of invariance (maybe this goes in the chapter
      outline bit? ideal adapter addresses shortcomings of other approaches)
        * abstraction: strip away variability. a fantasy
        * normalization: auditory normalization strips out most of talker variability. can't handle _stylistic_ variability which is widespread.
        * exemplar/episodic: problems with generalization
        * learning models: lack principled ways for determining free parameters like learning rates. deeper problem: need to adjust learning rate to achieve balance of stability and plasticity.
