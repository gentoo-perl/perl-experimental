# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RWSTAUNER
MODULE_VERSION=1.002
inherit perl-module

DESCRIPTION="Add release tests using Test::CPAN::Changes"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/Dist-Zilla $(comment Dist::Zilla::Plugin::InlineFiles)
	dev-perl/Moose
	dev-perl/CPAN-Changes $(comment Test::CPAN::Changes)
	>=dev-lang/perl-5.6.0
"
DEPEND="
	${COMMON_DEPEND}
	$(comment "virtual/perl-File-Find")
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
