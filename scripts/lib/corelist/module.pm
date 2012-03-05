use strict;
use warnings;

package corelist::module;

# FILENAME: module.pm
# CREATED: 06/03/12 00:26:40 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: represent a single module from corelist

use Moose;

has name      => ( isa => 'Str',        is => 'rw', required => 1 );
has version   => ( isa => 'Maybe[Str]', is => 'rw', required => 1 );
has perl      => ( isa => 'Str',        is => 'rw', required => 1 );
has coregroup => ( isa => 'Str',        is => 'rw', required => 1 );

sub to_s {
    my $self = shift;
    return sprintf '%s %s %s %s', $self->coregroup, $self->perl, $self->name,
      $self->version // 'undef';
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;

