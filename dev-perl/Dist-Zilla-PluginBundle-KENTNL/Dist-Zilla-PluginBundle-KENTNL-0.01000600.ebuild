# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="BeLike::KENTNL when you build your distributions."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-2.101310
	>=dev-perl/Dist-Zilla-Plugin-AutoVersion-Relative-0.01006104
	>=dev-perl/Dist-Zilla-Plugin-CompileTests-1.092870
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.10027518
	>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.093321
	>=dev-perl/Dist-Zilla-Plugin-ReadmeFromPod-0.04
	>=dev-perl/Dist-Zilla-Plugin-Repository-0.11
	>=dev-perl/Moose-1.01
	dev-perl/Moose-Autobox
	>=dev-perl/MooseX-Has-Sugar-0.0405
	>=dev-perl/MooseX-Types-0.21
	>=dev-perl/namespace-autoclean-0.09
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Module-Build-0.36.01
	dev-perl/Test-Kwalitee
	virtual/perl-Test-Simple
	dev-perl/Test-Perl-Critic
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
