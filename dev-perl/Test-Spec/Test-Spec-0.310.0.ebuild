# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=PHILIP
MODULE_VERSION=0.31
inherit perl-module

DESCRIPTION="Write tests in a declarative specification style"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/Test-Trap
	>=dev-perl/Test-Deep-0.103
	>=dev-perl/Package-Stash-0.23
	virtual/perl-Scalar-List-Utils
	virtual/perl-Test-Simple
	dev-perl/Tie-IxHash
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"

SRC_TEST=do
