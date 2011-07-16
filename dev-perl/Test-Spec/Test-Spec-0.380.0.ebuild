# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=PHILIP
MODULE_VERSION=0.38
inherit perl-module

DESCRIPTION="Write tests in a declarative specification style"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	$(comment virtual/perl-Carp)
	$(comment virtual/perl-Exporter)
	virtual/perl-Scalar-List-Utils $(comment List::Util)
	>=dev-perl/Package-Stash-0.230 $(comment 0.230.0)
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	virtual/perl-Test-Harness $(comment TAP::Parser)
	>=dev-perl/Test-Deep-0.103 $(comment 0.103.0)
	virtual/perl-Test-Simple $(comment Test::More)
	dev-perl/Test-Trap
	dev-perl/Tie-IxHash
	$(comment virtual/perl-constant)
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"

SRC_TEST=do
