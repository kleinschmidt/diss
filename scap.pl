#! /usr/bin/env perl -pi

# create short captions from first sentence of long captions.

use strict;
use warnings;

BEGIN{undef $/;} 

s/\\caption{([^.]+.)/\\caption[$1]{$1/smg
