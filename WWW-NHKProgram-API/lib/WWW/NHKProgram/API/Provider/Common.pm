package WWW::NHKProgram::API::Provider::Common;
use strict;
use warnings;

use utf8;
use Carp;

use JSON();

 sub call{
  my($class,$sub_api,$arg) = @_;

  my $res = $class->();

  return $res->{content};
 }

1;
