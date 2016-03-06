# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION='Display a stack trace on the debug screen'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# Catalyst -> Catalyst-Runtime
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.700.0
	dev-perl/Devel-StackTrace
	>=dev-perl/MRO-Compat-0.100.0
	>=dev-lang/perl-5.8.1
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	$RDEPEND
"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
	t/04critic.t
)
SRC_TEST="do"
