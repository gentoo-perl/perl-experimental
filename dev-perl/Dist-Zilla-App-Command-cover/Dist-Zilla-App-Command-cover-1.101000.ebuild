# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=MARCEL
inherit perl-module

DESCRIPTION="Code coverage metrics for your distribution"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	dev-perl/Dist-Zilla
	virtual/perl-File-Temp
	dev-perl/Path-Class
	dev-perl/File-chdir
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	>=virtual/perl-Test-Simple-0.94
	virtual/perl-Scalar-List-Utils
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
