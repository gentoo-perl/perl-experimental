# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=SATOH
inherit perl-module

DESCRIPTION="Manage settings"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-perl/Path-Class
	>=virtual/perl-File-Temp-0.20
	>=dev-perl/YAML-Syck-1.00
	dev-perl/File-HomeDir
	virtual/perl-File-Spec
	dev-perl/List-MoreUtils"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
