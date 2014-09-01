# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=INGY
MODULE_VERSION=0.30
inherit perl-module

DESCRIPTION='JavaScript Templating with Template Toolkit'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# Template -> Template::Toolkit
RDEPEND="
	>=dev-perl/File-Find-Rule-0.330.0
	>=dev-perl/Template-Toolkit-2.250.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
"
PERL_RM_FILES=(
	t/release-pod-syntax.t
)
SRC_TEST="do parallel"
