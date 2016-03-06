# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=ROKR
MODULE_VERSION=0.0012
inherit perl-module

DESCRIPTION="Conjure up a usage function for your applications"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Package-Pkg"
DEPEND="${RDEPEND}"
