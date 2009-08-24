# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="An serialization framework for Moose classes"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Moose-0.39
	>=dev-perl/JSON-Any-1.15
	>=dev-perl/Best-0.1
"
# IO-File
# Storable
# >=Test-More-0.47
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-Deep
		dev-perl/Test-Exception
		>=dev-perl/Test-TempDir-0.02
		>=dev-perl/Test-JSON-0.06
		dev-perl/Test-YAML-Valid
	)
"
SRC_TEST="do"
