# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=DMUEY
inherit perl-module

DESCRIPTION="Support for creating standard inside-out classes"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="virtual/perl-Scalar-List-Utils
	virtual/perl-version"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
