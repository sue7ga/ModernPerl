package WWW::NHKProgram::API::Provider::List;
use strict;
use warnigns;
use utf8;
use JSON();

use WWW::NHKProgram::API::Provider::Common;

sub call{
 my($class,$context,$arg) =@_;

 my $content = WWW::NHKProgram::API::Provider::Common::call(


 );

 return JSON::decode_json($content)->{list};

}

1;
