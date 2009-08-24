# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=JROCKWAY
inherit perl-module

DESCRIPTION="Test for valid YAML"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	virtual/perl-File-Spec
	>=dev-perl/yaml-0.60
"
DEPEND="${RDEPEND}"

SRC_TEST="do"
