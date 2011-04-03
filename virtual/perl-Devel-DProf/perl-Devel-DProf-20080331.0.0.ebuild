# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Virtual for Devel-DProf"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="
	|| (
		~dev-lang/perl-5.10.1
		~dev-lang/perl-5.12.2
		~dev-lang/perl-5.12.3
	)
	!perl-core/Devel-DProf
"
