# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Virtual for perl-core/Math-Complex"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="
	|| (
		=dev-lang/perl-5.10.1*
		=dev-lang/perl-5.12.2*
		=dev-lang/perl-5.14*
	)
	!perl-core/Math-Complex
"
