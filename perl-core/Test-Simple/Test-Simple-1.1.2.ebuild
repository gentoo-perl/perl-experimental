# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/perl-core/Test-Simple/Test-Simple-0.980.5-r1.ebuild,v 1.1 2014/07/26 12:08:06 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=RJBS
MODULE_VERSION=1.001002
inherit perl-module

DESCRIPTION="Basic utilities for writing tests"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPENDS="
	>=virtual/perl-Test-Harness-2.30.0
	>=virtual/perl-Scalar-List-Utils-1.130.0
"
DEPENDS="$RDEPENDS"
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
	t/dependents.t
	t/xt/dependents.t
	t/is_deeply_with_threads.t
)
SRC_TEST="do parallel"
mydoc="rfc*.txt"
