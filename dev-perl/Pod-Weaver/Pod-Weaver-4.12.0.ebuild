# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=4.012
inherit perl-module

DESCRIPTION='weave together a Pod document from an outline'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Config-MVP-2.0.0
	dev-perl/Config-MVP-Reader-INI
	dev-perl/DateTime
	virtual/perl-Encode
	virtual/perl-File-Spec
	dev-perl/List-MoreUtils
	>=dev-perl/Log-Dispatchouli-1.100.710
	>=dev-perl/Mixin-Linewise-0.103.0
	dev-perl/Module-Runtime
	dev-perl/Moose
	dev-perl/Params-Util
	>=dev-perl/Pod-Elemental-0.100.220
	>=dev-perl/String-Flogger-1.0.0
	>=dev-perl/String-Formatter-0.100.680
	dev-perl/String-RewritePrefix
	virtual/perl-Text-Tabs+Wrap
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-CPAN-Meta-2.120.900
		virtual/perl-File-Spec
		dev-perl/PPI
		dev-perl/Software-License
		dev-perl/Test-Differences
		>=virtual/perl-Test-Simple-0.960.0
	)
"
