# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/MooseX-Types-Path-Class/MooseX-Types-Path-Class-0.05.ebuild,v 1.1 2010/06/06 13:57:09 tove Exp $

EAPI=3

MODULE_AUTHOR=THEPLER
inherit perl-module

DESCRIPTION="A Path::Class type library for Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	|| ( >=dev-perl/Moose-1.990 dev-perl/Class-MOP )
	>=dev-perl/Moose-0.39
	>=dev-perl/MooseX-Types-0.04
	>=dev-perl/Path-Class-0.16"
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"

SRC_TEST="do"
