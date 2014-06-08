package WWW::NHKProgram::API::Provider;

use strict;
use warnings;
use utf8;

use JSON();

use LWP::UserAgent;

use constant BASEURL => 'http://api.nhk.or.jp/v1/pg/list';

use Class::Accessor::Lite::Lazy(
  new => 1,
   ro => [qw/api_key/],
);

sub dispatch{
 my ($self,$api_key,$list) = @_;
 my $area = $list->{area};
 my $service = $list->{service};
 my $date    = $list->{date};
 my $apikey = $self->{api_key};

 my $url = BASEURL."/$area"."/$service"."/$date".".json?key="."$apikey";
 my $ua = LWP::UserAgent->new;
 my $res = $ua->get($url);
 my $context = JSON::decode_json($res->{_content});

 @{$context->{list}->{g1}};

}

1;

