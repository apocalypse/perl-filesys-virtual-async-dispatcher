#!/usr/bin/perl

# Import the stuff
# XXX no idea why this is broken for this particular dist!
#use Test::UseAllModules;
#BEGIN { all_uses_ok(); }

use Test::More tests => 1;
use_ok( 'Filesys::Virtual::Async::Dispatcher' );
