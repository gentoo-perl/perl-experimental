# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit versionator

MY_P=${PN}-$(delete_version_separator 2)
S=${WORKDIR}/${MY_P}

MODULE_AUTHOR=DHOSS
inherit perl-module

DESCRIPTION="Data::FormValidator plugin for Catalyst"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800
	dev-perl/Data-FormValidator
	dev-perl/MRO-Compat
	>=dev-perl/Moose-0.93
"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
	)"
