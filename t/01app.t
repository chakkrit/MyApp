#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

BEGIN { $ENV{MYAPP_CONFIG_LOCAL_SUFFIX}="testing" }

use Test::WWW::Mechanize::Catalyst 'MyApp';

ok( my $mech = Test::WWW::Mechanize::Catalyst->new, 'Create mech object' );
$mech->get_ok('http://localhost:3000/', 'default page');
$mech->get_ok('http://localhost:3000/books/list', 'book list page');
$mech->content_contains('Book List', 'Head line');
$mech->content_contains('Title', 'Title Column');
$mech->content_contains('Rating', 'Rating Column' );
$mech->content_contains('Author(s)', 'Author Column');

done_testing();
