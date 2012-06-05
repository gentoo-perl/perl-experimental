# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Virtual for B::Lint"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=" || (
	( >=dev-lang/perl-5.13.9 <=dev-lang/perl-5.15.8 )
	=perl-core/B-Lint-${PV}*
)"
