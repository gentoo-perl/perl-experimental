# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR="NEVESENIN"
MODULE_VERSION="0.04"
inherit perl-module

DESCRIPTION="Perl version of Dean Edwards' Packer.js"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( >=dev-perl/Test-Pod-1.22 )"

SRC_TEST="do"
