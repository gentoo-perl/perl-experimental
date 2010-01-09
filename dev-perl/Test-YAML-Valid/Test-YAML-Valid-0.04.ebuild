# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=JROCKWAY
inherit perl-module

DESCRIPTION="Test for valid YAML"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="yaml-syck yaml-xs yaml-tiny"
RDEPEND="
	virtual/perl-File-Spec
	>=dev-perl/yaml-0.60
	yaml-syck? ( >=dev-perl/YAML-Syck-0.60 )
	yaml-xs? ( dev-perl/YAML-LibYAML )
	yaml-tiny? ( dev-perl/YAML-Tiny )
"
DEPEND="${RDEPEND}"

SRC_TEST="do"
