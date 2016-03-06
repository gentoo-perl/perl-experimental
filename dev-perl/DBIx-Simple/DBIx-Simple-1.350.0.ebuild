# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=JUERD
MODULE_VERSION=1.35
inherit perl-module

DESCRIPTION="Easy-to-use OO interface to DBI"

LICENSE="|| ( Artistic GPL-2 )" # any osi
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/DBI-1.210.0"
DEPEND="${RDEPEND}"

PERL_RM_FILES=(
	t/pod.t
)
SRC_TEST=do
