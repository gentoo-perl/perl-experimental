# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.38
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (Date handling)"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

# Time::ParseDate -> Time-modules
RDEPEND="
	dev-perl/Date-Tiny
	dev-perl/DateTime
	dev-perl/DateTime-Tiny
	dev-perl/Time-Tiny
	dev-perl/Time-modules
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
