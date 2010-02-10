# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="DWIM loading of Moose objects from YAML "

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/MooseX-Blessed-Reconstruct-0.03
	dev-perl/Sub-Exporter
	dev-perl/namespace-clean
	dev-perl/yaml
"
DEPEND="
	${COMMON_DEPEND}
	test? ( dev-perl/Test-use-ok )
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
