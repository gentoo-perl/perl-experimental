# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="The Perl Installation Program, for scripted and third-party distribution installation."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=virtual/perl-File-Spec-0.80
	>=virtual/perl-File-Temp-0.14
	>=dev-perl/File-Which-1.08
	>=dev-perl/File-pushd-0.32
	virtual/perl-Getopt-Long
	>=virtual/perl-CPAN-1.76
	>=dev-perl/CPAN-Inject-0.07
	>=dev-perl/Params-Util-1.00
	dev-perl/PAR-Dist
	dev-perl/URI
	dev-perl/libwww-perl
	virtual/perl-IO-Zlib
	virtual/perl-Archive-Tar
	dev-perl/Archive-Zip
"
# >=virtual/perl-CPAN-1.76
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.42
		>=dev-perl/Test-Script-1.02
		>=dev-perl/LWP-Online-0.02
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
