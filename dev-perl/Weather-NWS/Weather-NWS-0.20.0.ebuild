# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=JMCADA
MODULE_VERSION=0.02
MODULE_SECTION=weather
inherit perl-module

DESCRIPTION="Object interface to the NWS Web services"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/01_boilerplate.t
	t/02_pod.t
	t/03_pod-coverage.t
)
# r:LWP::Simple -> libwww-perl
# d:Test::More -> Test-Simple
RDEPEND="
	dev-perl/Class-Std
	dev-perl/Readonly
	dev-perl/SOAP-DateTime
	dev-perl/libwww-perl"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=dev-perl/Test-Pod-1.140.0
		>=dev-perl/Test-Pod-Coverage-1.40.0
		virtual/perl-Test-Simple
	)"
