# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RJBS
MODULE_VERSION=2.200000
inherit perl-module

DESCRIPTION="multivalue-property package-oriented configuration"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/Class-Load-0.06
	virtual/perl-File-Spec
	virtual/perl-Module-Pluggable
	>=dev-perl/Moose-0.91
	dev-perl/MooseX-OneArgNew
	dev-perl/Params-Util
	dev-perl/Role-HasMessage
	dev-perl/Role-Identifiable
	>=virtual/perl-Test-Simple-0.88
	dev-perl/Throwable
	dev-perl/Tie-IxHash
	dev-perl/Try-Tiny
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	!dev-perl/Config-INI-MVP
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
