# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=FAYLAND
MODULE_VERSION=0.12-fix
MY_S="${WORKDIR}/${PN}-0.12"
inherit perl-module

DESCRIPTION="perltidy your dist"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	$(comment Dist::Zilla 2.100880)
	>=dev-perl/Dist-Zilla-2.100.880

	$(comment File::Copy)

	$(comment File::Next)
	dev-perl/File-Next

	$(comment Perl::Tidy)
	dev-perl/perltidy
"
DEPEND="
	${COMMON_DEPEND}
	$(comment configure)
	$(comment ExtUtils::MakeMaker 6.56)
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
