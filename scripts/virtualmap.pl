
{

  package VirtualRecord;
  use 5.16.0;
  use Moo;

  has virtual_name         => ( is => rw =>, required => 1, );
  has virtual_corepackage  => ( is => rw =>, required => 1, );
  has virtual_check_module => ( is => rw =>, required => 1, );
  has repo                 => ( is => rw =>, required => 1, );


}
{
  package VDB;
  use 5.16.0;
  use Quote::Sub;
  has items => ( is => rw => , default => quote_sub(q{ [] });

  sub add_item {
    my ( $self ,  @args ) = @_ ;
    my $rec =  VirtualRecord->new(
        virtual_name => $args[0],
        virtual_corepackage => $args[1],
        virtual_check_moodule => $args[2],
        repo => $args[3];
    );
    push @{ $self->items }, $rec;
  }
  sub add_items {
    my ( $self, @args ) = @_;
    for my $rec ( @args ){ 
      $self->add_item( @{$rec} );
    }
  }
}

sub atom_expand {
  my $atom = shift;
  my $package = $atom =~ s/::/-/gr;
  my $virtual = $package =~ s/^/perl-/r;
  return ( $virtual, $package, $atom );
}
my $vdb = VDB->new();
$vdb->add_items(
  ( map { [ atom_expand($_), 'perl-experimental' ] } qw(
      Archive::Extract
      B::Debug
      B::Lint
      constant
      CPAN
      CPANPLUS
      CPANPLUS::Dist::Build
      Devel::DProf
      Devel::PPPort
      Devel::SelfStubber
      Dumpvalue
      Exporter
      ExtUtils::MakeMaker
      File::Fetch
      Filter::Simple
      HTTP::Tiny
      if
      IPC::SysV
      Log::Message
      Log::Message::Simple
      Math::Complex
      Module::CoreList
      NEXT
      Object::Accessor
      Pod::LaTeX
      Pod::Perldoc
      Pod::Plainer
      SelfLoader
      Term::UI
      Unicode::Collate
      Unicode::Normalize
  )),
  [ 'perl-i18n-langtags' , 'i18n-langtags', 'I18N::LangTags' , 'perl-experimental']
);
$vdb->add_items(
  ( map { [ atom_expand($_), 'gentoo' ] } qw(
      Archive::Tar
      Attribute::Handlers
      AutoLoader
      CGI
      Class::ISA
      Compress::Raw::Bzip2
      Compress::Raw::Zlib
      CPAN::Meta
      CPAN::Meta::Requirements
      CPAN::Meta::YAML
      Data::Dumper
      DB_File
  )),
  [ 'perl-digest-base' , 'digest-base', 'Digest' , 'gentoo'],
 ( map { [ atom_expand($_), 'gentoo' ] } qw(
  )),

);

