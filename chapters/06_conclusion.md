# Conclusion


Human speech perception is a remarkable feat of perceptual inference. Despite
massive variability in the way that linguistic units are realized by acoustic
signals---both within and across talkers---listeners manage to reliably infer
talkers' intended messages. The apparent ease by which this is accomplished
belies the substantial computational complexity of the problem, and goes to show
how well the human speech perception system is shaped by---and hence matched
to---the challenges presented by speech. The work presented in this thesis
develops a theoretical and computational framework---the ideal adapter---for
understanding one of the most long-standing problems in research on speech
perception: how listeners cope with cross-talker variability.

This framework starts from the idea that speech perception is a problem of
inference under uncertainty about the phonetic category (or other linguistic
unit) that a talker intended to produce
[e.g., @Clayards2008; @Feldman2009a; @Norris2008]. The ideal adapter extends
these models by treating speech perception as a problem of inference under
uncertainty at *multiple* levels. Robust speech perception requires that
listeners continuously draw inferences not only about *what* the talker is
trying to communicate, but also about the cue-category mappings that the talker
is using (i.e., the talker’s generative model). Moreover, in order to determine
what previous experience is relevant in making these inferences, and how
relevant it is, these inferences in turn depend on higher-level inferences about
*who* the talker is. This ranges from specific talker identity—supporting
*recognition* of familiar talkers—to more general groups like gender, accent, or
dialect—supporting generalization across similar talkers. The proposed
multi-level inference solution can capture a variety of otherwise puzzling
properties of speech adaptation

More importantly, the ideal adapter provides a guiding framework and a set of
theoretical and computational tools for future research on speech perception,
adaptation, and generalization.  The ideal adapter specifically highlights
listeners' beliefs about how talkers vary in the cue distributions they produce
as critically important for understanding how listeners cope with that
variability. According to the ideal adapter, these beliefs are used to _guide_
and _constrain_ adaptation to unfamiliar talkers, and are learned from
experience with _actual_ variation across talkers. Later chapters take first
steps at understanding the constraints on rapid adaptation to unfamiliar talkers
and quantifying the structure of variability across talkers. Both of these are
underexplored areas which the ideal adapter highlights as central to
understanding human speech perception.

Finally, the challenges posed by variability are not unique to speech perception,
but rather general to the problem of effective perception and action in
a variable world. This problem has been explored in the context of motor
control [e.g., @Kording2007] and reinforcement learning [e.g.,
@Cho2002; @Gallistel2001], where it is typically cast as a problem of
detecting changes in the statistics of the local environment (change
detection). Our proposal highlights the fact that in a world where
substantial parts of cross-situation variability are not random, but
rather structured, simply detecting changes is not enough. Rather,
learners can benefit from inferring the underlying structure to
cross-situation variation, in order to recognize familiar situations and
generalize to similar situations. In speech perception, the major source
of variation across situations is the *talker*, but the same logic can
be applied to other domains [@Qian2012; @Qian2013]. The ideal adapter
highlights the potential of speech perception to serve as a model
organism for understanding perception in a variable—but
structured—world, and suggests that superficially unrelated phenomena
from non-linguistic perceptual/motor domains might be informative about
language processing and acquisition and vice-versa.
