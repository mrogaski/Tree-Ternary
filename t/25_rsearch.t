#!/usr/local/bin/perl
###########################################################################
# $Id: 25_rsearch.t,v 1.1 2003/09/27 21:28:46 wendigo Exp $
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

BEGIN { plan tests => 13 }

$ref = new Tree::Ternary;

${$ref->rinsert("foobar")} = "HNB";
${$ref->rinsert("bloodhound")} = "gang";

ok(ref($ref->rsearch("foobar")), 'SCALAR');
ok(${$ref->rsearch("foobar")}, 'HNB');

ok(ref($ref->rsearch("foo")), '');

ok(ref($ref->rsearch("foobaz")), '');

ok(ref($ref->rsearch("pianosaurus")), '');

ok(ref($ref->rsearch("blood")), '');

ok(ref($ref->rsearch("bloodhound")), 'SCALAR');
ok(${$ref->rsearch("bloodhound")}, 'gang');

${$ref->rinsert("blood")} = "sausage";

ok(ref($ref->rsearch("blood")), 'SCALAR');
ok(${$ref->rsearch("blood")}, 'sausage');

ok(ref($ref->rsearch("")), '');

${$ref->rinsert("")} = "NULL";

ok(ref($ref->rsearch("")), 'SCALAR');
ok(${$ref->rsearch("")}, 'NULL');

