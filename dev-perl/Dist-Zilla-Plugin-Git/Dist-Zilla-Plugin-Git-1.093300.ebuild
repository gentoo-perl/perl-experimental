# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=JQUELIN
inherit perl-module

DESCRIPTION="update your git repository after release"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-Types
	>=dev-perl/Dist-Zilla-1.093250
	dev-perl/Git-Wrapper
	virtual/perl-File-Path
	virtual/perl-File-Spec
	dev-perl/Moose
	dev-perl/Moose-Autobox
	virtual/perl-File-Temp
	dev-perl/Test-Exception
	virtual/perl-Test-Simple
	dev-perl/String-Formatter
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
