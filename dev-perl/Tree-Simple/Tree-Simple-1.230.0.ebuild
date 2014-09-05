# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Tree-Simple/Tree-Simple-1.180.0-r1.ebuild,v 1.1 2014/08/23 22:11:56 axs Exp $

EAPI=5

MODULE_AUTHOR=RSAVAGE
MODULE_VERSION=1.23
MODULE_A_EXT="tgz"
inherit perl-module

DESCRIPTION="A simple tree object"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=virtual/perl-Scalar-List-Utils-1.180.0
"
DEPEND="${RDEPEND}
	>=virtual/perl-Module-Build-0.400.0
	test? (
		>=virtual/perl-Test-Simple-0.470.0
		>=dev-perl/Test-Exception-0.150.0
	)"
PERL_RM_FILES=(
	t/version.t
	xt/author/pod.t
	xt/author/pod_coverage.t
)
src_prepare() {
	perl-module_src_prepare
	sed -i 's/^.*Test::Version.*$//' "${S}/Build.PL" "${S}/Makefile.PL"
}
SRC_TEST="do parallel"
