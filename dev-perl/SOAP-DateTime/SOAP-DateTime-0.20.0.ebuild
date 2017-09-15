# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=MCMAHON
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="Support for converting dates to xsd:dateTime format"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="dev-perl/Date-Manip"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.440.0 )"
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
