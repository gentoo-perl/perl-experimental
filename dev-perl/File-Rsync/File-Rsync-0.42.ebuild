# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=LEAKIN
inherit perl-module

DESCRIPTION="Perl interface to rsync"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND="virtual/perl-Scalar-List-Utils
	net-misc/rsync"
DEPEND="${RDEPEND}"

src_compile() {
	echo "$(which rsync)" | perl-module_src_compile
}
