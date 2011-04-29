# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=APOCAL
MODULE_VERSION="1.006"
inherit perl-module

DESCRIPTION="Makes using SSL in the world of POE easy"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="virtual/perl-IO
	>=dev-perl/Net-SSLeay-1.36
	virtual/perl-Scalar-List-Utils
	>=dev-perl/Task-Weaken-1.03
	virtual/perl-parent
	>=dev-lang/perl-5.6"
DEPEND=">=virtual/perl-Module-Build-0.36.01
	${RDEPEND}
	>=dev-perl/POE-1.267
	test? ( >=virtual/perl-Test-Simple-0.88 )"
