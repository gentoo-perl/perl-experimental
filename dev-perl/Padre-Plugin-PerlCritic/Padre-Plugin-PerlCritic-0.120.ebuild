# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=AZAWAWI
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION="Analyze perl files with Perl::Critic"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=virtual/perl-Module-Build-0.36.01"
RDEPEND="app-editors/padre
	dev-perl/Perl-Critic"
