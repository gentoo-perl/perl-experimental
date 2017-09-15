# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.38
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl: Config Modules"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND="
	dev-perl/Config-Any
	dev-perl/Config-General
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.38.0
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Spec
		virtual/perl-Test-Simple
	)
"
