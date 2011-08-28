# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.004
inherit perl-module

DESCRIPTION="run xt tests for your dist"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true;}
COMMON_DEPEND="
	$(comment Capture::Tiny)
	dev-perl/Capture-Tiny

	$(comment Sub::Exporter)
	dev-perl/Sub-Exporter

	$(comment Dist::Zilla::Tester 2)
	>=dev-perl/Dist-Zilla-2.0.0

	$(comment Params::Util 1)
	>=dev-perl/Params-Util-1.00 $(comment 1.0.0)

	$(comment Moose)
	dev-perl/Moose

	$(comment Try::Tiny)
	dev-perl/Try-Tiny

	$(comment namespace::autoclean)
	dev-perl/namespace-autoclean

	$(comment Dist::Zilla::App 2)
	>=dev-perl/Dist-Zilla-2.0.0

	$(comment File::pushd 1)
	>=dev-perl/File-pushd-1.00 $(comment 1.0.0)

	$(comment Dist::Zilla::App::Tester 2)
	>=dev-perl/Dist-Zilla-2.0.0

	$(comment Moose::Autobox)
	dev-perl/Moose-Autobox

	$(comment Test::More 0.88)
	>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)

	$(comment Dist::Zilla 2)
	>=dev-perl/Dist-Zilla-2.0.0

	$(comment File::Temp 0.20)
	>=virtual/perl-File-Temp-0.200.0

	$(comment Dist::Zilla::Role::BeforeRelease 2)
	>=dev-perl/Dist-Zilla-2.0.0

	$(comment Path::Class)
	dev-perl/Path-Class

	$(comment App::Prove 3)
	>=virtual/perl-Test-Harness-3.0.0
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
