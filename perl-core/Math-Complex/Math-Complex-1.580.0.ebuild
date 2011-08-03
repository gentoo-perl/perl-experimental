# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=1.58
inherit perl-module

DESCRIPTION="complex numbers and associated mathematical functions"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Config)
	$(comment virtual/perl-Exporter)
	virtual/perl-ExtUtils-MakeMaker
	>=virtual/perl-Scalar-List-Utils-1.110.0
	virtual/perl-Test-Simple
	$(comment virtual/perl-overload)
	$(comment virtual/perl-strict)
	$(comment virtual/perl-warnings)
"
DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"
SRC_TEST="do"
