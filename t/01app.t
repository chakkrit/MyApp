#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

BEGIN { $ENV{MYAPP_CONFIG_LOCAL_SUFFIX}="testing" }

use Catalyst::Test 'MyApp';

ok( request('/')->is_success, 'Request should succeed' );

done_testing();
