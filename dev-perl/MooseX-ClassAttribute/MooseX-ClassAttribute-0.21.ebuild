# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/MooseX-ClassAttribute/MooseX-ClassAttribute-0.21.ebuild,v 1.1 2010/10/31 09:32:51 tove Exp $

EAPI=3

MODULE_AUTHOR=DROLSKY
inherit perl-module

DESCRIPTION="Declare class attributes Moose-style"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-perl/Moose-1.15
	dev-perl/namespace-autoclean"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	test? ( >=virtual/perl-Test-Simple-0.88
		dev-perl/Test-Fatal
		>=dev-perl/Test-Requires-0.05 )"

SRC_TEST=do
