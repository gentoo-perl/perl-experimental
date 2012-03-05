use strict;
use warnings;

package corelist::group;

# FILENAME: group.pm
# CREATED: 06/03/12 00:27:37 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: a group of some kind

use Moose;
use corelist::single;

has _perls =>
  ( isa => 'ArrayRef[Str]', is => 'rw', required => 1, init_arg => 'perls' );

has perls => (
    isa        => 'HashRef[corelist::single]',
    is         => 'rw',
    lazy_build => 1,
    init_arg   => undef
);
has name => ( isa => 'Str', is => 'rw', required => 1 );

sub get_perl {
    my ( $self, $perlv ) = @_;
    if ( not exists $self->perls->{$perlv} ) {
        die "No key $perlv";
    }
    return $self->perls->{$perlv};
}

# BUILDERS
sub _build_perls {
    my $self = shift;
    return {
        map {
            $_,
              corelist::single->new( coregroup => $self->name, perl => $_ )
          } @{ $self->_perls }
    };
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;

