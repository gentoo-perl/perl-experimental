# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=MARCEL
MODULE_VERSION=1.111840
inherit perl-module

DESCRIPTION="Release tests for portability"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-1.0.0 $(comment Dist::Zilla::Plugin::InlineFiles 0)
	>=dev-perl/Dist-Zilla-1.0.0 $(comment Dist::Zilla::Role::FileMunger 0)
	dev-perl/Moose
	dev-perl/Test-Portability-Files
"
DEPEND="
	${COMMON_DEPEND}
	$(comment CONFIG REQUIRES)
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
	$(comment BUILD REQUIRES)
	$(comment virtual/perl-Carp)
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	>=dev-perl/Dist-Zilla-4.200.2 $(comment Test::DZil)
	>=virtual/perl-Test-Simple-0.94 $(comment Test::More 0.940.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
