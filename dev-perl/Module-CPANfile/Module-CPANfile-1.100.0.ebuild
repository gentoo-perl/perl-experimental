# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=1.1000

inherit perl-module

DESCRIPTION="Parse cpanfile"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/release-pod-syntax.t
)
RDEPEND="
	>=virtual/perl-CPAN-Meta-2.120.910
	virtual/perl-parent
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.880.0
	)
"
