# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=DROLSKY
inherit perl-module

DESCRIPTION="Watch for changes to files, cross-platform style."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/Class-MOP
	virtual/perl-Module-Pluggable
	dev-perl/Moose
	dev-perl/MooseX-Params-Validate
	dev-perl/MooseX-SemiAffordanceAccessor
"
DEPEND="
	${RDEPEND}
"

SRC_TEST=do
