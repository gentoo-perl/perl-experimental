# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=SSCAFFIDI
inherit perl-module

DESCRIPTION="Automatically convert POD to a README for Dist::Zilla"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-1.7
	dev-perl/Moose
	dev-perl/Moose-Autobox
	virtual/perl-Encode
	virtual/perl-File-Temp
	virtual/perl-File-Temp
	virtual/perl-IO
	virtual/perl-podlators
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
