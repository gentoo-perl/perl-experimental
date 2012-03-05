use strict;
use warnings;

package corelist::single;

# FILENAME: single.pm
# CREATED: 06/03/12 00:23:19 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: represent a single perl version

use Moose;
use corelist::module;

has 'perl' => ( isa => 'Str', is => 'rw', required => 1 );

has 'modules' => (
    isa        => 'HashRef[corelist::module]',
    is         => 'rw',
    lazy_build => 1,
    traits     => [qw(        Hash        )],
    handles    => {
        'module_names' => 'keys',
        'has_module'   => 'exists',
        'module'       => 'get',
    },
);

has 'released' => ( isa => 'Str', is => 'rw', lazy_build => 1 );

has 'perl_version' => ( isa => 'Str', is => 'rw', lazy_build => 1 );

has 'coregroup' => ( isa => 'Str', is => 'rw', required => 1 );

sub delta {
    my ( $self, $other ) = @_;
    my (%all) = map { $_, 1 }
      $self->module_names,
      $other->module_names;
    my %diffs;
    for my $module ( keys %all ) {
        if ( $self->has_module($module) and not $other->has_module($module) ) {
            $diffs{$module} = {
                kind              => 'ours',
                available_in      => $self->perl_version,
                not_available_in  => $other->perl_version,
                module            => $module,
                available_version => $self->module($module)->version,
            };
            next;
        }
        if ( not $self->has_module($module) and $other->has_module($module) ) {
            $diffs{$module} = {
                kind              => 'theirs',
                available_in      => $other->perl_version,
                not_available_in  => $self->perl_version,
                module            => $module,
                available_version => $other->module($module)->version,
            };
            next;
        }
        if ( ( $self->module($module)->version // 'undef' ) ne
            ( $other->module($module)->version // 'undef' ) )
        {
            $diffs{$module} = {
                kind          => 'cross',
                module        => $module,
                our_version   => $self->module($module)->version,
                their_version => $other->module($module)->version,
                our_perl      => $self->perl_version,
                their_perl    => $other->perl_version,
            };
        }

    }
    return \%diffs;
}

# BUILDERS
sub _build_perl_version {
    require version;
    my $self = shift;
    return version->parse( $self->perl )->numify;
}

sub _version_string {
    my $self = shift;
    return $self->perl . ' ( ' . $self->perl_version . ' )';
}

sub _build_released {
    require Module::CoreList;
    my $self = shift;
    if ( not exists $Module::CoreList::released{ $self->perl_version } ) {
        die "Version "
          . $self->_version_string
          . " is not in the \$released stash";
    }
    return $Module::CoreList::released{ $self->perl_version };
}

sub _build_modules {
    require Module::CoreList;
    my $self = shift;
    if ( not exists $Module::CoreList::version{ $self->perl_version } ) {
        my (@versions) = sort keys %Module::CoreList::version;
        die "Version "
          . $self->_version_string
          . " is not in the \$version stash\n"
          . " Usually this means either you specified an invalid perl, or that \n"
          . " Your copy of Module::CoreList ( $Module::CoreList::VERSION ) is out of date\n"
          . ' Pick one of these: ' . join q[, ], @versions;
    }

    my $stash = $Module::CoreList::version{ $self->perl_version };

    return {
        map {
            $_,
              corelist::module->new(
                perl      => $self->perl_version,
                coregroup => $self->coregroup,
                name      => $_,
                version   => $stash->{$_}
              )
          } keys %$stash
    };
}
no Moose;
__PACKAGE__->meta->make_immutable;
1;

