# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.005
inherit perl-module

DESCRIPTION="prevent a release if you have prereqs not found on CPAN"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

comment() { true;}

COMMON_DEPEND="
	$(comment Dist::Zilla::Role::BeforeRelease)
	>=dev-perl/Dist-Zilla-4
	$(comment Encode)
	virtual/perl-Encode
	$(comment LWP::UserAgent)
	dev-perl/libwww-perl
	$(comment List::MoreUtils)
	dev-perl/List-MoreUtils
	$(comment Moose)
	dev-perl/Moose
	$(comment YAML::XS)
	dev-perl/YAML-LibYAML
	$(comment namespace::autoclean)
	dev-perl/namespace-autoclean
	$(comment version)
	virtual/perl-version
"
DEPEND="
	${COMMON_DEPEND}
	$(comment --configure)
	$(comment perl 5.010000)
	>=dev-lang/perl-5.10.0
	$(comment ExtUtils::MakeMaker 6.56)
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	$(comment --build)
	$(comment Test::Dzil)
	>=dev-perl/Dist-Zilla-4.200.2
	$(comment Test::Fatal)
	dev-perl/Test-Fatal
	$(comment Test::More 0.96)
	>=virtual/perl-Test-Simple-0.96
	$(comment strict)
	$(comment warnings)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
