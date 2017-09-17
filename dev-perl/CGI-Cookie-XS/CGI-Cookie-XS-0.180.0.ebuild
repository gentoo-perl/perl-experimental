# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=AGENT
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION="HTTP Cookie parser in pure C"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	virtual/perl-Filter-Simple
"
DEPEND="
	${RDEPEND}
"
PERL_RM_FILES=(
	t/99-pod-coverage.t
	t/99-pod.t
)
SRC_TEST="do"
