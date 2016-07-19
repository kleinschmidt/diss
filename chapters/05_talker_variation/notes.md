# Relevant prior work

McMurray and Jongman (2011): quantify how different cue encoding models improve
phonetic classification. And how different factors (talker, gender) explain
variance in different cues. How does this relate to us? Well the motivation (I
think) is very similar: how much does talker identity, gender, context matter
for cues? What are the consequences of this for speech perception (modeled and
actual). The difference is that they're not looking at distributions per
se. They can't really say anything at the level of multiple cues together
(e.g. F1 and F2) if they're looking at R2/explained variance of individual cues
using linear regression. This makes it hard to compare, holistically, across
different categories/contrasts. At a higher level, using a discriminative model
makes it harder to see how you'd deal with learning. Well maybe the problem is
more that it's a two-stage thing, that assumes that you have perfect knowledge
about the context, talker, etc. This makes it hard to incorporate _any_ kind of
joint inference, whether that's about the neighboring segments, about the
current talker/gender, about the underlying distrbutions. More concretely, it
can't handle _learning_, because it assumes that the input to the classifier is
already normalized.

I'm just not sure how much we really need to get into this. I mean, it's
obviously closely related to what we're doing in spirit. It might be enough to
point that out and say as briefly as possible why the generative approach is meaningfully different.

Major points are: 

* Our approach is _generative_: everything is driven by having an accurate model
  of the _cue distributions_.
* This provides a _learning model_, which is critical when you don't have perfect knowledge of a particular talker's distributions
