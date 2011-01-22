# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/namespace-autoclean/namespace-autoclean-0.11.ebuild,v 1.1 2010/05/08 07:14:38 tove Exp $

EAPI=3

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Keep imports out of your namespace"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-perl/namespace-clean-0.11
	|| ( >=dev-perl/Moose-1.990 >=dev-perl/Class-MOP-0.80 )
	>=dev-perl/B-Hooks-EndOfScope-0.07"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	test? ( >=dev-perl/Moose-0.56 )"

SRC_TEST=do
