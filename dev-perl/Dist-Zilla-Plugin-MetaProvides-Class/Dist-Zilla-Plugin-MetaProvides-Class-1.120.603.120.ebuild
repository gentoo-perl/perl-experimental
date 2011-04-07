# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.12060312
inherit perl-module

DESCRIPTION="Scans Dist::Zilla's .pm files and tries to identify classes using Class::Discover"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+metanoindex"
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/Class-Discover
	$(comment Dist::Zilla::MetaProvides::ProvideRecord)
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.120.448.60[metanoindex=]
	$(comment Dist::Zilla::Role::MetaProvider::Provider)
	dev-perl/Moose
	dev-perl/Moose-Autobox
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.0.110
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	dev-perl/MooseX-Declare
	dev-perl/Test-Fatal
	dev-perl/Moose $(comment Test::Moose)
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
