# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=YANICK
MODULE_VERSION=0.6.1
inherit perl-module

DESCRIPTION="Patch CPAN modules using Git"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	virtual/perl-Archive-Extract
	dev-perl/BackPAN-Index
	dev-perl/CLASS
	virtual/perl-File-Spec $(comment Cwd)
	$(comment virtual/perl-File-Basename)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Path
	virtual/perl-File-Spec $(comment File::Spec::Functions)
	virtual/perl-File-Temp
	dev-perl/File-chdir
	dev-perl/File-chmod
	virtual/perl-Getopt-Long
	dev-perl/Git-Repository
	dev-perl/libwww-perl $(comment LWP::UserAgent)
	virtual/perl-PodParser $(comment Pod::Usage)
	dev-perl/autodie
	>=dev-lang/perl-5.10.0
	virtual/perl-version
"
DEPEND="
	$(comment configure)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	test? (
		$(comment build)
		$(comment virtual/perl-Carp)
		virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
		dev-perl/Test-Compile
		>=virtual/perl-Test-Simple-0.94
	)
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
