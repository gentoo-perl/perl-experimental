# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="BeLike::KENTNL when you build your distributions."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }

COMMON_DEPEND="
	>=dev-perl/Class-Load-0.06 $(comment 0.60.0)
	>=dev-perl/Dist-Zilla-4.101.612
	>=dev-perl/Dist-Zilla-Plugin-AutoVersion-Relative-0.10.356.170
	>=dev-perl/Dist-Zilla-Plugin-CompileTests-1.110.930
	>=dev-perl/Dist-Zilla-Plugin-CriticTests-1.102.280 $(comment 1.102.280)
	>=dev-perl/Dist-Zilla-Plugin-EOLTests-0.02 $(comment 0.20.0)
	>=dev-perl/Dist-Zilla-Plugin-Git-1.102.40
	>=dev-perl/Dist-Zilla-Plugin-GithubMeta-0.80.0
	>=dev-perl/Dist-Zilla-Plugin-KwaliteeTests-1.101.420
	>=dev-perl/Dist-Zilla-Plugin-MetaData-BuiltWith-0.01014716 $(comment 0.10.147.160)
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.120.445.180
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-Package-1.110.444.40
	>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.93.321 $(comment 3.93.321)
	>=dev-perl/Dist-Zilla-Plugin-ReadmeFromPod-0.12 $(comment 0.120.0)
	>=dev-perl/Dist-Zilla-Plugin-ReportVersions-Tiny-1.01 $(comment 1.10.0)
	dev-perl/Dist-Zilla-Plugin-Test-CPAN-Changes
	>=dev-perl/Dist-Zilla-Plugin-Twitter-0.7 $(comment 0.700.0)
	>=dev-perl/Moose-1.01 $(comment 1.10.0)
	>=dev-perl/MooseX-Has-Sugar-0.50.443
	>=dev-perl/MooseX-Types-0.210 $(comment 0.210.0)
	>=dev-perl/Net-SSLeay-1.36 $(comment 1.360.0)
	>=dev-perl/Test-EOL-0.9 $(comment 0.900.0)
	>=dev-perl/namespace-autoclean-0.09 $(comment 0.90.0)
	>=dev-perl/LWP-Protocol-https-6.0.0
	dev-perl/IO-Socket-SSL
	dev-perl/Moose-Autobox
	dev-perl/Pod-Coverage-TrustPod
	dev-perl/String-Formatter
	dev-perl/Test-CPAN-Meta
	!!dev-perl/Dist-Zilla-PluginBundle-KENTNL
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
	virtual/perl-File-Temp
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
