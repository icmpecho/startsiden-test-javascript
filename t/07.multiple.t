#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;

use Startsiden::Test::JavaScript::Base;

my $test_scripts = Startsiden::Test::JavaScript::Base->find_test_scripts;
is( scalar @{$test_scripts}, 4);
# convert array to hash to lookup
my %test_scripts_hash = map{ $_ => 1 } @{$test_scripts};
ok(exists($test_scripts_hash{'t/07.multiple.t.0.js'}));
ok(exists($test_scripts_hash{'t/07.multiple.t.1.js'}));
ok(exists($test_scripts_hash{'t/07.multiple.t.99.js'}));
ok(exists($test_scripts_hash{'t/07.multiple.t.js'}));

done_testing();
