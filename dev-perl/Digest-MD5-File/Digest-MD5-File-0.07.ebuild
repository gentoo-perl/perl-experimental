# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=DMUEY
inherit perl-module

DESCRIPTION="Perl extension for getting MD5 sums for files and urls."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
DEPEND="
	dev-perl/libwww-perl
"
