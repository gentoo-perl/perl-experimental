# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=CHOCOLATE
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION="automatically return a true value when a file is required"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PERL_RM_FILES=(
	t/pod.t
)
RDEPEND="
	>=dev-perl/B-Hooks-OP-Annotation-0.430.0
	>=dev-perl/B-Hooks-OP-Check-0.180.0
	>=dev-perl/Devel-StackTrace-1.270.0
"
DEPEND="
	${RDEPEND}
	>=dev-perl/ExtUtils-Depends-0.304.0
	virtual/perl-ExtUtils-MakeMaker
"
