# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Exclude files/directories for Version Control Systems"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/File-Find-Rule"
DEPEND="${RDEPEND}"

SRC_TEST=do
