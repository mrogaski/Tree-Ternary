#!/usr/local/bin/perl
###########################################################################
# $Id: 15_search.t,v 1.1 2003/09/27 21:28:46 wendigo Exp $
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

${$ref->insert("foobar")} = "HNB";
${$ref->insert("bloodhound")} = "gang";

ok(ref($ref->search("foobar")), 'SCALAR');
ok(${$ref->search("foobar")}, 'HNB');

ok(ref($ref->search("foo")), '');

ok(ref($ref->search("foobaz")), '');

ok(ref($ref->search("pianosaurus")), '');

ok(ref($ref->search("blood")), '');

ok(ref($ref->search("bloodhound")), 'SCALAR');
ok(${$ref->search("bloodhound")}, 'gang');

${$ref->insert("blood")} = "sausage";

ok(ref($ref->search("blood")), 'SCALAR');
ok(${$ref->search("blood")}, 'sausage');

ok(ref($ref->search("")), '');

${$ref->insert("")} = "NULL";

ok(ref($ref->search("")), 'SCALAR');
ok(${$ref->search("")}, 'NULL');

