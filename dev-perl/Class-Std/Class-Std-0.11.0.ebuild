# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DCONWAY
MODULE_VERSION=0.011
inherit perl-module

DESCRIPTION="Support for creating standard inside-out classes"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="virtual/perl-Scalar-List-Utils"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	test? ( virtual/perl-Test-Simple )"
