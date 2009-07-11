# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=HORIUCHI
inherit perl-module

DESCRIPTION="YAML profile manager for FormValidator::Simple"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND=">=dev-perl/yaml-0.58"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.32 )"
