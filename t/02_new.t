#!/usr/local/bin/perl
###########################################################################
# $Id: 02_new.t,v 1.1 2003/09/27 21:28:46 wendigo Exp $
###########################################################################
#
# Author: Mark Rogaski <wendigo@pobox.com>
# RCS Revision: $Revision: 1.1 $
# Date: $Date: 2003/09/27 21:28:46 $
#
###########################################################################
#
# See README for license information.
#
###########################################################################

use Test;
use Tree::Ternary;

BEGIN { plan tests => 2 }

ok($ref = new Tree::Ternary);
ok(ref($ref), 'Tree::Ternary');

