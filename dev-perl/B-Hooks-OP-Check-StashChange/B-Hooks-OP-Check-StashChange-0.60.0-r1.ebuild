# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_VERSION=0.06
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Invoke callbacks when the stash code is being compiled in changes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Test::More -> Test-Simple
RDEPEND="
	virtual/perl-parent
	>=dev-perl/B-Hooks-OP-Check-0.140.0
"
DEPEND="${RDEPEND}
	dev-perl/ExtUtils-Depends
	test? (
		virtual/perl-Test-Simple
	)
"
