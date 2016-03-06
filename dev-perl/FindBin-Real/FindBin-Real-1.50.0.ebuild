# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=STRO
MODULE_VERSION=1.05
inherit perl-module

DESCRIPTION="Locate directory of original perl script"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND=""
DEPEND=""

PERL_RM_FILES=(
	t/tpod.t
	t/tpodc.t
)
SRC_TEST=do
