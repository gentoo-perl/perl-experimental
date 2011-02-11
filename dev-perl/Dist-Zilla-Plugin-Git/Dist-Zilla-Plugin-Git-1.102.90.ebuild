# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=JQUELIN
MODULE_VERSION="1.102090"
inherit perl-module

DESCRIPTION="update your git repository after release"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	|| ( >=dev-perl/Moose-1.990 dev-perl/Class-MOP )
	virtual/perl-File-Spec
	dev-perl/DateTime
	>=dev-perl/Dist-Zilla-2.100.880
	virtual/perl-File-Temp
	dev-perl/File-chdir
	dev-perl/Git-Wrapper
	dev-perl/Moose
	dev-perl/Moose-Autobox
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-Types
	dev-perl/String-Formatter
	>=dev-lang/perl-5.10.0
"
DEPEND="
	>=virtual/perl-Module-Build-0.36.01
	dev-perl/Path-Class
	virtual/perl-Scalar-List-Utils
	dev-perl/Test-Exception
	virtual/perl-Test-Simple
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
