# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Virtual for HTTP-Tiny"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="|| (
	(
		>=dev-lang/perl-5.15.9
		!perl-core/HTTP-Tiny
	)
	~perl-core/HTTP-Tiny-${PV}
)"
