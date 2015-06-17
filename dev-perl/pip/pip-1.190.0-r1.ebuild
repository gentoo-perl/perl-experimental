# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ADAMK
MODULE_VERSION=1.19
inherit perl-module

DESCRIPTION="The Perl Installation Program, for scripted and third-party distribution installation."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=virtual/perl-File-Spec-0.80
	>=virtual/perl-File-Temp-0.14
	>=dev-perl/File-Which-1.08
	>=dev-perl/File-pushd-0.320.0
	virtual/perl-Getopt-Long
	>=virtual/perl-CPAN-1.760
	>=dev-perl/CPAN-Inject-0.70.0
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
		>=dev-perl/LWP-Online-0.20.0
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
