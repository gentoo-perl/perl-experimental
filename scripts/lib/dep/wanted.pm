use strict;
use warnings;

package dep::wanted;

# FILENAME: wanted.pm
# CREATED: 31/10/11 13:45:03 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: a record for something wanted to be a dep

use Moose;
has [qw( module version_string )] => ( isa => 'Str', is => 'rw', 'required' => 1 );
has [qw( gentoo_version version )] => ( is => 'rw', lazy_build => 1 );

sub _build_gentoo_version {
  my $self = shift;
  require Gentoo::PerlMod::Version;
  return Gentoo::PerlMod::Version::gentooize_version( $self->version_string );
}

sub _build_version {
  my $self = shift;
  require version;
  return version->parse( $self->version_string );
}

sub no_version_dep {
  return not defined $_[0]->version_string;
}

sub provides {
  require metacpan;
  my $self = shift;
  require dep::provided;
  return map { dep::provided->new( %{$_} ) } metacpan->find_dist_simple( $self->module );
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;

