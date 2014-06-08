use strict;
use warnings;
use utf8;
use Encode;
use Carp;
use FindBin;
use lib "$FindBin::Bin/../lib";
use WWW::NHKProgram::API;

my $nhk = WWW::NHKProgram::API->new(api_key => 'UqCm6EDFh00qSArYkKw4MQo9XAvPMiHm');

use Data::Dumper;

my @nhk =  $nhk->list({area => 130,service => 'g1',date => '2014-06-08'});

foreach my $list(@nhk){
 print $list->{area}->{name},"\n";
}








