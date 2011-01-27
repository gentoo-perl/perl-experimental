# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/MooseX-StrictConstructor/MooseX-StrictConstructor-0.12.ebuild,v 1.1 2010/10/31 09:26:08 tove Exp $

EAPI=3

MODULE_AUTHOR=DROLSKY
inherit perl-module

DESCRIPTION="Make your object constructors blow up on unknown attributes"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-perl/Moose-0.94"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	test? ( dev-perl/Test-Fatal )"

SRC_TEST=do
