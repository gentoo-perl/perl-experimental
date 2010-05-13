# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="Use Hash::Util::FieldHash or ties, depending on availability."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

#COMMON_DEPEND="
#	|| (
#		>=dev-lang/perl-5.12.0 
#		( dev-perl/Tie-RefHash dev-perl/Tie-RefHash-Weak )
#	)"
COMMON_DEPEND="dev-perl/Tie-RefHash dev-perl/Tie-RefHash-Weak"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-use-ok
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
