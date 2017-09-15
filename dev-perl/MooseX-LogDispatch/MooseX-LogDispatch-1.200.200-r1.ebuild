# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=JGOULAH
MODULE_VERSION=1.2002
inherit perl-module

DESCRIPTION="A Logging Role for Moose"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/pod.t
)
RDEPEND="
	dev-perl/Moose
	>=dev-perl/Log-Dispatch-Config-0.50.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/IO-stringy
		virtual/perl-Test-Simple
		dev-perl/Test-Exception
	)
"
