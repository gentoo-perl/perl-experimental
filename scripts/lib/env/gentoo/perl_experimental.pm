use strict;
use warnings;

package env::gentoo::perl_experimental;

# FILENAME: perl_experimental.pm
# CREATED: 02/08/11 16:31:56 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Generic data relevant to the perl-experimental overlay

use Moose;

has '_filename' => (
  is         => 'rw',
  lazy_build => 1,
  builder    => '_build__filename',
);

has 'root' => (
  is       => 'rw',
  builder  => '_build_root',
  required => 1,
);

sub _build__filename {
  require Path::Class::File;
  return Path::Class::File->new(__FILE__)->resolve->absolute;
}

sub _build_root {
  my ($self)     = shift;
  my $gentoo_dir = $self->_filename->parent;
  my $env_dir    = $gentoo_dir->parent;
  my $lib_dir    = $env_dir->parent;
  my $src_dir    = $lib_dir->parent;
  my $root       = $src_dir->parent;
  return $root;
}

use colorcarp 
  carper => { attributes => [qw( red on_white )] , -as => 'redconfess' };

sub check_script {
  my ( $self, $scriptname ) = @_;
  require Path::Class::File;
  my $expected = $self->root->file( $scriptname )->absolute ;
  my $got = Path::Class::File->new( $0 )->absolute;
  return 1 if ( $expected eq $got );
  redconfess("The expected name for the running script \"$got\" was supposed to be \"$expected\". This likely indicates a fatal problem");

}

sub metadata_dir {
  my ( $self, @extra ) = @_;
  return $self->root->subdir('metadata') if not @extra;
  my $d = $self->root->subdir('metadata', @extra );
  $d->mkpath;
  return $d;
}


no Moose;
__PACKAGE__->meta->make_immutable;
1;

