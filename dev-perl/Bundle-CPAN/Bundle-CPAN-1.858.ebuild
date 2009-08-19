# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=ANDK
inherit perl-module

DESCRIPTION="Bundle to optimize the behaviour of CPAN.pm"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=virtual/perl-Test-Harness-2.62
	virtual/perl-ExtUtils-CBuilder
	virtual/perl-Module-Build
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	virtual/perl-Digest-SHA
	dev-perl/File-HomeDir
	virtual/perl-Compress-Raw-Zlib
	virtual/perl-Compress-Raw-Bzip2
	virtual/perl-IO-Zlib
	virtual/perl-Archive-Tar
	virtual/perl-IO-Compress
	dev-perl/Archive-Zip
	dev-perl/Term-ReadLine-Perl
	dev-perl/yaml
	virtual/perl-Parse-CPAN-Meta
	dev-perl/Text-Glob
	dev-perl/File-Which
	virtual/perl-Test-Simple
"
# virtual/perl-CPAN
# dev-perl/Term-ReadKey
# dev-perl/Net-Cmd
# dev-perl/Net-FTP
# dev-perl/Data-Dumper
RDEPEND="${DEPEND}"
