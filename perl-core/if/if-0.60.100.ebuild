# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=ILYAZ
MODULE_VERSION="0.0601"
SRC_URI="mirror://cpan/authors/id/I/IL/ILYAZ/modules/if-0.0601.tar.gz"
inherit perl-module

DESCRIPTION="use a Perl module if a condition holds"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
