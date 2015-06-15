# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BCHOATE
MODULE_VERSION=2.13
inherit perl-module

DESCRIPTION="A humane web text generator."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/pod.t
)
RDEPEND="
	virtual/perl-Exporter
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-Test-Simple
		>=virtual/perl-Test-Harness-2.500.0
	)
"
