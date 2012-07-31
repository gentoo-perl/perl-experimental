package virtuals {

  use 5.16.0;
  use Moo;
  use Sub::Quote qw( quote_sub );

  has items => (
    is      => rw =>,
    default => quote_sub(q{ [] }),
  );
}

package virtual::record {
  use 5.16.0;
  use Moo;

  has package => ( is => rw =>, required => 1, );
  has repo    => ( is => rw =>, required => 1, );

  sub virtual {
    my $self = shift;
    return $self->package =~ s/^/virtual\/perl-/r;
  }

  sub core {
    my $self = shift;
    return $self->package =~ s/^/perl-core\//r;
  }
};

package virtuals::perl {
  use 5.16.0;
  use Moo;
  extends 'virtuals';

  sub instance {
    my ( $class ) = shift;
    state $cache = do {
      $class->new();
    };
    return $class;
  }

  has +items => ( default => quote_sub(q| map { virtual::record->new( $_ , 'perl-experimental' )  } $_[0]->_packages; |) );

  sub _packages {
    return qw( Archive-Extract
      B-Debug
      B-Lint
      CPAN
      CPANPLUS
      CPANPLUS-Dist-Build
      Devel-DProf
      Devel-PPPort
      Devel-SelfStubber
      Dumpvalue
      Exporter
      ExtUtils-MakeMaker
      File-Fetch
      Filter-Simple
      HTTP-Tiny
      IPC-SysV
      Log-Message
      Log-Message-Simple
      Math-Complex
      Module-CoreList
      NEXT
      Object-Accessor
      Pod-LaTeX
      Pod-Perldoc
      Pod-Plainer
      SelfLoader
      Term-UI
      Unicode-Collate
      Unicode-Normalize
      constant
      i18n-langtags
      if );
  }
}

package virtuals::gentoo {
  use 5.16.0;
  use Moo;
  extends 'virtuals';
  has +items => ( default => quote_sub(q|  map { virtual::record->new( $_ , 'gentoo' )  } $_[0]->_packages; |), );

  sub instance {
    my ( $class ) = shift;
    state $cache = do {
      $class->new();
    };
    return $class;
  }


  sub _packages {
    return qw(
      Archive-Tar
      Attribute-Handlers
      AutoLoader
      CGI
      Class-ISA
      Compress-Raw-Bzip2
      CPAN-Meta
      CPAN-Meta-Requirements
      CPAN-Meta-YAML
      Data-Dumper
      DB_File
      digest-base
      Digest-MD5
      Digest-SHA
      Encode
      ExtUtils-CBuilder
      ExtUtils-Command
      ExtUtils-Constant
      ExtUtils-Install
      ExtUtils-MakeMaker
      ExtUtils-Manifest
      ExtUtils-ParseXS
      File-Path
      File-Spec
      File-Temp
      Filter
      Getopt-Long
      IO
      IO-Compress
      IO-Zlib
      IPC-Cmd
      JSON-PP
      Locale-Maketext-Simple
      MIME-Base64
      Math-BigInt
      Math-BigInt-FastCalc
      Memoize
      Module-Build
      Module-CoreList
      Module-Load
      Module-Load-Conditional
      Module-Loaded
      Module-Metadata
      Module-Pluggable
      Package-Constants
      Params-Check
      Parse-CPAN-Meta
      Perl-OSType
      Pod-Escapes
      Pod-Simple
      PodParser
      Safe
      Scalar-List-Utils
      Socket
      Storable
      Switch
      Sys-Syslog
      Term-ANSIColor
      Test
      Test-Harness
      Test-Simple
      Text-Balanced
      Text-ParseWords
      Text-Tabs+Wrap
      Thread-Queue
      Thread-Semaphore
      Time-HiRes
      Time-Local
      Time-Piece
      Version-Requirements
      XSLoader
      digest-base
      i18n-langtags
      libnet
      locale-maketext
      net-ping
      parent
      podlators
      threads
      threads-shared
      version
    );
  }
};

1;

