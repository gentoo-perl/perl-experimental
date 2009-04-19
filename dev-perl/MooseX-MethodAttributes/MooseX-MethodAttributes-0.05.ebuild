# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Code atttribute introspection"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/namespace-clean
	>=dev-perl/MooseX-Types-0.06
	>=dev-perl/Moose-0.070
"    
