# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="An integrated API for inspecting Perl distributions"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/File-Find-Rule
	>=dev-perl/PPI-1.118
	dev-perl/YAML-Tiny"
DEPEND="${RDEPEND}"
