# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ANDK
MODULE_VERSION=1.859
inherit perl-module

DESCRIPTION="Bundle to optimize the behaviour of CPAN.pm"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	>=virtual/perl-Test-Harness-2.62
	virtual/perl-ExtUtils-CBuilder
	virtual/perl-File-Temp
	virtual/perl-Test-Simple
	virtual/perl-Data-Dumper
	virtual/perl-IO-Compress
	virtual/perl-IO-Zlib
	virtual/perl-Archive-Tar
	virtual/perl-Module-Build
	virtual/perl-File-Spec
	virtual/perl-Digest-SHA
	dev-perl/File-HomeDir
	dev-perl/Archive-Zip
	virtual/perl-libnet
	dev-perl/TermReadKey
	dev-perl/Term-ReadLine-Perl
	dev-perl/yaml
	virtual/perl-Parse-CPAN-Meta
	dev-perl/Text-Glob
	virtual/perl-CPAN
	dev-perl/File-Which
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
