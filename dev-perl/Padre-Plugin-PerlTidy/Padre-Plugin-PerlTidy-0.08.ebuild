# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=BRICAS
inherit perl-module

DESCRIPTION="Format perl files using Perl::Tidy"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=dev-perl/Locale-Msgfmt-0.14"
RDEPEND=">=app-editors/padre-0.43
	dev-perl/perltidy"
SRC_TEST="do"
