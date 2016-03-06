# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION_SCHEME="float_n 6"
inherit perl-module

DESCRIPTION="upload things to the CPAN"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND="
	virtual/perl-Carp
	virtual/perl-Data-Dumper
	dev-perl/File-HomeDir
	virtual/perl-File-Spec
	>=dev-perl/Getopt-Long-Descriptive-0.84.0
	dev-perl/HTTP-Message
	>=dev-perl/LWP-Protocol-https-1.0.0
	dev-perl/libwww-perl
	dev-perl/TermReadKey
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		>=virtual/perl-CPAN-Meta-2.120.900
		>=virtual/perl-Test-Simple-0.960.0
	)
"
