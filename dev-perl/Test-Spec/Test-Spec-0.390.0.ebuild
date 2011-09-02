# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=PHILIP
MODULE_VERSION=0.39
inherit perl-module

DESCRIPTION="Write tests in a declarative specification style"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
RDEPEND="
	$(comment Carp)

	$(comment Exporter)

	$(comment List::Util)
	virtual/perl-Scalar-List-Utils

	$(comment Package::Stash 0.23)
	>=dev-perl/Package-Stash-0.230 $(comment 0.230.0)

	$(comment Scalar::Util)
	virtual/perl-Scalar-List-Utils

	$(comment TAP::Parser)
	virtual/perl-Test-Harness $(comment TAP::Parser)

	$(comment Test::Deep 0.103)
	>=dev-perl/Test-Deep-0.103 $(comment 0.103.0)

	$(comment Test::More)
	virtual/perl-Test-Simple

	$(comment Test::Trap)
	dev-perl/Test-Trap

	$(comment Tie::IxHash)
	dev-perl/Tie-IxHash

	$(comment constant)
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"

SRC_TEST=do
