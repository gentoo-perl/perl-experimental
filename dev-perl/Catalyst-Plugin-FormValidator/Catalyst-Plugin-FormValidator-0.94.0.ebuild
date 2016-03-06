# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_VERSION=0.094
MODULE_AUTHOR=DHOSS
inherit perl-module

DESCRIPTION="Data::FormValidator plugin for Catalyst"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.0
	dev-perl/Data-FormValidator
	dev-perl/MRO-Compat
	>=dev-perl/Moose-0.930.0
"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
	)"
