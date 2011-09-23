# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.1.1
inherit perl-module

DESCRIPTION="Dump a textual representation of each phase\'s parts."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true; }
COMMON_DEPEND="
	$(comment Dist::Zilla::App)
	dev-perl/Dist-Zilla
	$(comment Moose::Autobox)
	dev-perl/Moose-Autobox
	$(comment Scalar::Util)
	virtual/perl-Scalar-List-Utils
	$(comment Term::ANSIColor)
	virtual/perl-Term-ANSIColor
	$(comment Try::Tiny)
	dev-perl/Try-Tiny
	$(comment strict)
	$(comment warnings)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment --configure)
	$(comment Module::Build 0.3601)
	>=virtual/perl-Module-Build-0.36.01
	$(comment --build)
	$(comment File::Find)

	$(comment File::Temp)

	$(comment Module::Build 0.3601)
	>=virtual/perl-Module-Build-0.36.01
	$(comment Test::More 0.88)
	>=virtual/perl-Test-Simple-0.88
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
