# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.12060213
inherit perl-module

DESCRIPTION="Extract namespaces/version from traditional packages for provides"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+metanoindex"
comment() { echo ''; }
COMMON_DEPEND="
	$(comment Dist::Zilla::MetaProvides::ProvideRecord)
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.120.448.60[metanoindex=]
	$(comment Dist::Zilla::Role::MetaProvider::Provider)
	virtual/perl-File-Temp
	>=dev-perl/Module-Extract-Namespaces-0.14 $(comment 0.140.0)
	>=dev-perl/Module-Extract-VERSION-0.13    $(comment 0.130.0)
	dev-perl/Moose
	dev-perl/Moose-Autobox
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.0.110
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	dev-perl/Test-Fatal
	dev-perl/Moose $(comment Test::Moose)
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
