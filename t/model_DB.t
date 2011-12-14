use strict;
use warnings;
use Test::More;

BEGIN { $ENV{MYAPP_CONFIG_LOCAL_SUFFIX}="testing" }
BEGIN { use_ok 'MyApp::Model::DB' }

done_testing();
