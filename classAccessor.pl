package MyObj;

use strict;
use warnings;

use Data::Dumper;

use base qw(Class::Accessor::Fast);

my $obj = MyObj->new();

use Class::Accessor::Lite(
  new => 1,
  rw  => [qw(aaa bbb ccc)],
);

my $aaa = $obj->aaa();

$obj->aaa(123);

print $obj->{'aaa'},"\n";

__PACKAGE__->mk_accessors(qw( aaa bbb ccc));



