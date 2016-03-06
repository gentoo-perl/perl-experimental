# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="read-eval-print-loop for debugging your Catalyst application"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/release-pod-syntax.t
	t/release-pod-coverage.t
)
RDEPEND="
	dev-perl/namespace-autoclean
	>=dev-perl/Catalyst-Runtime-5.800.60
	dev-perl/Carp-REPL
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Test-Expect
	)
"
