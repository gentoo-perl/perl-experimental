# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=SILASMONK
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="A two-phase Test library. One: Generate outputs. Two: Compare them"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	virtual/perl-Test-Simple
	dev-perl/Test-Differences
	dev-perl/Text-Diff
	dev-perl/Algorithm-Diff
"
DEPEND="
	>=virtual/perl-Module-Build-0.35
	dev-perl/Test-MockObject
	virtual/perl-File-Spec
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
src_configure () {
	rm "${S}/t/pod.t"
	perl-module_src_configure
}
SRC_TEST="do parallel"
