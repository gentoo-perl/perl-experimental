# Copyright 2014 Julian Ospald <hasufell@gentoo.org>
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR="GFUJI"
MODULE_VERSION="1.09"
inherit perl-module

DESCRIPTION="Extend your attribute interfaces for Mouse"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="dev-perl/Any-Moose
	virtual/perl-ExtUtils-MakeMaker
	test? ( dev-perl/Test-Fatal )"
RDEPEND="dev-perl/Mouse"

SRC_TEST="do"
