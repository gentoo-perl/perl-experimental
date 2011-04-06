# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.11060208
inherit perl-module

DESCRIPTION="In the event nothing else works, pull in hand-crafted metadata from a specified file."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	dev-perl/Class-Load
	dev-perl/Config-INI $(comment Config::INI::Reader)
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.110.342.10
	$(comment ^^ ::ProvideRecord )
	$(comment ^^ MetaProvides 1.110.342.10)
	$(comment ^^ ::MetaProvider::Provider)
	dev-perl/Moose
	dev-perl/Moose-Autobox
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Dist-Zilla-4.0 $(comment ::App::Tester)
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
