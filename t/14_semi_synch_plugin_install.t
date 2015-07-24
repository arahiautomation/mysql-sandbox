use strict;
use warnings;
use lib './t';
use Test_Helper;
use MySQL::Sandbox;

my $use_current = 0;

if ($ENV{TEST_VERSION} gt '5.6')
{
    $use_current =1;
}

find_plugindir('5.5.4', '5.5.41', $use_current);

test_sandbox( 'test_sandbox --user_test=./t/semi_synch_plugin_install.sb.pl', 9);
