# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ANDK
MODULE_VERSION=1.862
inherit perl-module

DESCRIPTION="Bundle to optimize the behaviour of CPAN.pm"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+xxl"

RDEPEND="
	virtual/perl-ExtUtils-MakeMaker
	>=virtual/perl-Test-Harness-2.620.0
	virtual/perl-ExtUtils-CBuilder
	virtual/perl-File-Temp
	virtual/perl-Test-Simple
	virtual/perl-Data-Dumper
	virtual/perl-IO-Compress
	virtual/perl-IO-Zlib
	virtual/perl-Archive-Tar
	dev-perl/Module-Build
	virtual/perl-File-Spec
	virtual/perl-Digest-SHA
	dev-perl/File-HomeDir
	dev-perl/Archive-Zip
	virtual/perl-libnet
	dev-perl/TermReadKey
	dev-perl/Term-ReadLine-Perl
	dev-perl/YAML
	virtual/perl-Parse-CPAN-Meta
	dev-perl/Text-Glob
	virtual/perl-CPAN
	dev-perl/File-Which
	xxl? (
		dev-perl/YAML-Syck
		dev-perl/IO-Tty
		dev-perl/Module-Signature
		dev-perl/CPAN-Reporter
		dev-perl/Kwalify
	)
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
