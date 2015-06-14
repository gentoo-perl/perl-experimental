# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=GSIMMONS
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="HTML::Strip filter for Template Toolkit"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/01_pod.t
	t/02_pod-coverage.t
)
RDEPEND="
	>=dev-perl/HTML-Strip-1.40.0
	>=dev-perl/Template-Toolkit-2.140.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.620.0
	)
"
