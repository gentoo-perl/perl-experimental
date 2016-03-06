# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=DMAKI
MODULE_VERSION=0.00003
inherit perl-module

DESCRIPTION="Any::Moose support for Module::Install"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=">=dev-perl/Module-Install-0.720.0"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? ( virtual/perl-Test-Simple )"
