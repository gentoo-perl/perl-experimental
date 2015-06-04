# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MSTROUT
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION="Unmaintained, dangerous proof of concept"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"

PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
RDEPEND="
	dev-perl/Array-RefElem
	dev-perl/Catalyst-Runtime
	dev-perl/Devel-Caller
	dev-perl/Devel-LexAlias
	dev-perl/PadWalker
"
DEPEND="$RDEPEND
	virtual/perl-ExtUtils-MakeMaker
	test? (
		|| ( >=virtual/perl-Test-Simple-1.1.10	dev-perl/Test-use-ok )
	)
"
