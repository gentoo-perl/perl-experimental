use strict;
use warnings;

package dep::module;

# FILENAME: module.pm
# CREATED: 31/10/11 13:44:00 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: A dependency record for a single module

use Moose;

has 'name'           => ( isa => "Str",        required   => 1,    is       => 'rw', );
has 'version_string' => ( isa => 'Maybe[Str]', is         => 'rw', init_arg => 'version', predicate => 'has_version_string' );
has 'version'        => ( is  => 'rw',         lazy_build => 1,    init_arg => undef );
has 'parent'         => ( is  => 'rw',         required   => 1,    weak_ref => 1 );

sub _build_version {
  require version;
  my $self = shift;
  return version->parse( $self->version_string );
}

sub debug_string {
  my $self = shift;
  return sprintf '%s ( %s ) => %s', $self->parent->version,
    $self->parent->can_gv ? $self->parent->gv : 'undef',
    $self->has_version_string ? '"' . $self->version_string . '"' : 'undef';
}

__PACKAGE__->meta->make_immutable;

no Moose;
1;

