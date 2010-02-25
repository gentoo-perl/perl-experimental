# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=JGOULAH
inherit perl-module

DESCRIPTION="Catalyst plugin to restart server processes when specified memory threshold is reached"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND=">=dev-perl/Catalyst-Runtime-5.7007
	>=dev-perl/MRO-Compat-0.07
	dev-perl/Class-Data-Accessor
	>=dev-perl/Text-SimpleTable-0.03
	>=dev-perl/Proc-ProcessTable-0.41"
DEPEND="${RDEPEND}"
