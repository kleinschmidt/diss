#! /usr/bin/env perl -p

use strict;
use warnings;

BEGIN{undef $/;} 

s/\\chapter{([^}]*)}(\\label{[^}]*})/\\chapter[$1]{$1\\protect\\footnotemark{}}$2\n\n\\footnotetext{This work was previously published as \\protect\\fullcite{Kleinschmidt2016}}/smg
