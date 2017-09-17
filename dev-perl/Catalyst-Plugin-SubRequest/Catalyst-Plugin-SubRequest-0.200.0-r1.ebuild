# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=EDENC
MODULE_VERSION=0.20
inherit perl-module

DESCRIPTION='Make subrequests to actions in Catalyst'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/03pod.t
	t/04podcoverage.t
)
PATCHES=(
	# https://rt.cpan.org/Ticket/Display.html?id=94392
	"${FILESDIR}/${MODULE_VERSION}/Cat-5.9.patch"
)
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.900.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
	test? ( virtual/perl-Test-Simple )
"
