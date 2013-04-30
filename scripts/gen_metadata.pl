use 5.12.2;
use strict;
use warnings;


use FindBin;
use lib "$FindBin::Bin/lib";
use env::gentoo::perl_experimental;
use optparse;
use utf8;
use XML::Smart;

my $env = env::gentoo::perl_experimental->new();
my $opts = optparse->new(
  argv => \@ARGV,
  help => sub { print <DATA>; return }
);

my $root = $env->root;
use Path::Class::Dir;

my $cwd = Path::Class::Dir->new('.')->absolute;

my $package_dir = $cwd;

if( $opts->has_long_opt('package-dir') ) {
  $package_dir = Path::Class::Dir->new($opts->long_opt('package-dir'))->absolute;
}
if( not scalar grep { not $_->is_dir and $_->basename =~ /\.ebuild$/ } $package_dir->children ) {
  die "Sorry, there are no .ebuild files in this directory, not going to create a metadata.xml file here!";
}

if( $opts->has_long_opt('new') ) {
  say "Generating a new metdata.xml";
  if ( -e $package_dir->file('metadata.xml')->stat ){
    #  die "Error: metadata.xml already exists here";
  }
  my $herd = 'perl';
  my $maintainer_name;
  my $maintainer_email;
  my $cpan_id;

  if( $opts->has_long_opt('herd') ) {
    $herd = $opts->long_opt('herd');
  }
  if( $opts->has_long_opt('maintainer-name') ){
    $maintainer_name = $opts->long_opt('maintainer-name');
  }
  if( $opts->has_long_opt('maintainer-email') ){
    $maintainer_email = $opts->long_opt('maintainer-email');
  }
  if( $opts->has_long_opt('cpan-id') ) {
    $cpan_id = $opts->long_opt('cpan-id');
  }
  my $xml = XML::Smart->new('<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE pkgmetadata SYSTEM "http://www.gentoo.org/dtd/metadata.dtd"><pkgmetadata></pkgmetadata>');
  $xml->{pkgmetadata}->{herd}->[0] = $herd;
  # $xml->{pkgmetadata}->{herd}->set_node(1);
  if ( defined $maintainer_name ) {
    $xml->{pkgmetadata}->{maintainer}->{name} = $maintainer_name;
    # $xml->{pkgmetadata}->{maintainer}->{name}->set_node(1);
  }
  if( defined $maintainer_email ) {
    $xml->{pkgmetadata}->{maintainer}->{email} = $maintainer_email;
    # $xml->{pkgmetadata}->{maintainer}->{email}->set_node(1);
  }
  if( defined $cpan_id ) {
    $xml->{pkgmetadata}->{upstream}->{'remote-id'}->content($cpan_id);
    $xml->{pkgmetadata}->{upstream}->{'remote-id'}->{type} = 'cpan';
  }

  $xml->apply_dtd('http://www.gentoo.org/dtd/metadata.dtd');
  
  print scalar $xml->data(  nodtd => 1, meta =>  { 'script' => 'perl-experimental/scripts/gen_metadata.pl' } );
}


__DATA__

__END__
