package WWW::NHKProgram::API;
use 5.008005;
use strict;
use warnings;

use WWW::NHKProgram::API::Provider;

use Class::Accessor::Lite::Lazy(
  new => 1,
  ro  => [qw/api_key/],
  ro_lazy => [qw/provider/],
);

our $VERSION = "0.01";

sub list{
 my $self = shift;
 return $self->provider->dispatch('list',@_);
}

sub _build_provider{
  my $self = shift;
  return WWW::NHKProgram::API::Provider->new(
     api_key  => $self->api_key,
  );
}

1;



__END__

=encoding utf-8

=head1 NAME

WWW::NHKProgram::API - It's new $module

=head1 SYNOPSIS

    use WWW::NHKProgram::API;

=head1 DESCRIPTION

WWW::NHKProgram::API is ...

=head1 LICENSE

Copyright (C) sue7ga.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

sue7ga E<lt>sue77ga@gmail.comE<gt>

=cut

