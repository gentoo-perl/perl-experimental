# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=AZAWAWI
MODULE_VERSION=0.16
inherit perl-module

DESCRIPTION="Format perl files using Perl::Tidy"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=app-editors/padre-0.57
	dev-perl/perltidy"
DEPEND=">=dev-perl/Locale-Msgfmt-0.15
	>=virtual/perl-Module-Build-0.36.01"
