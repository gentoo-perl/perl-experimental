# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.103001
inherit perl-module

DESCRIPTION="Packages that provide templated software licenses"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
RDEPEND="
	$(comment virtual/perl-Carp)
	dev-perl/Data-Section
	dev-perl/Sub-Install
	dev-perl/text-template
"
DEPEND="${RDEPEND}
	$(comment configure)
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
	$(comment build)
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)
"

SRC_TEST="do"
