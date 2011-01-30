# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=AVAR
inherit perl-module

DESCRIPTION="Automatically convert POD to a README for Dist::Zilla"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-1.7
	dev-perl/IO-stringy
	virtual/perl-File-Temp
	dev-perl/Moose
	dev-perl/Moose-Autobox
	virtual/perl-podlators
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	>=dev-lang/perl-5.10.0
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
