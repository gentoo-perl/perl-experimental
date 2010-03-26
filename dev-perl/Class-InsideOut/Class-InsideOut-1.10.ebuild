# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR="DAGOLDEN"
inherit perl-module

DESCRIPTION="A safe, simple inside-out object construction kit"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Scalar-List-Utils
	virtual/perl-Class-ISA"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST="do"
