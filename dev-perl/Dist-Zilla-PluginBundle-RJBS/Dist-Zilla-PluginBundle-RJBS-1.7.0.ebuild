# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=1.007
inherit perl-module

DESCRIPTION="BeLike::RJBS when you build your dists "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-2.100.922
	>=dev-perl/Dist-Zilla-2.100.860 $(comment first ::AutoPrereq)
	dev-perl/Dist-Zilla-Plugin-CheckPrereqsIndexed
	>=dev-perl/Dist-Zilla-Plugin-GithubMeta-0.120.0
	>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.92.971 $(comment 3.92.971)
	dev-perl/Dist-Zilla-Plugin-Repository
	>=dev-perl/Dist-Zilla-Plugin-TaskWeaver-0.93.330
	>=dev-perl/Dist-Zilla-2.100.960 $(comment first ::PluginBundle::Basic)
	>=dev-perl/Dist-Zilla-Plugin-Git-1.93.250 $(comment first ::PluginBundle::Git)
	>=dev-perl/Dist-Zilla-2.101.40 $(comment first PluginBundle::Easy role)
	dev-perl/Moose
	dev-perl/Moose-Autobox
	>=dev-perl/Pod-Elemental-0.92.970 $(comment 0.92.970)
	dev-perl/Pod-Elemental-Transformer-List
	>=dev-perl/Pod-Weaver-3.100.310 $(comment 3.100.310)
	>=dev-perl/Pod-Weaver-3.92.990 $(comment 3.92.990 first Pod::Weaver::Config::Assembler)
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 0.560.0)
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
