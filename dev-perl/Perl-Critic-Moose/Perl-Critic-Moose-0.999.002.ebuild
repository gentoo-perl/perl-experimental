# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ELLIOTJS
inherit versionator

MY_P=${PN}-$(replace_version_separator 2 '_')
S=${WORKDIR}/${MY_P}

inherit perl-module

DESCRIPTION="Policies for Perl::Critic concerned with using Moose, the \"post-modern\" object system for Perl."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="" # No keywords, developer release
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Perl-Critic-1.098
	dev-perl/Readonly
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
