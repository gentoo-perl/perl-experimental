# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ROKR
MODULE_VERSION=0.025
inherit perl-module

DESCRIPTION='Inject components into your Catalyst application'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.0
	dev-perl/Class-Inspector
	dev-perl/Module-Pluggable
	virtual/perl-parent
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.30
	test? (
		dev-perl/Test-Most
	)
"
