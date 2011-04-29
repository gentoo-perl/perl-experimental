# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=DANIEL
MODULE_VERSION="0.7.1"
inherit perl-module

DESCRIPTION="API for reading & writing XSPF Playlists"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND=">=dev-perl/Class-Accessor-0.20
	>=dev-perl/TimeDate-1.1
	>=dev-perl/HTML-Parser-3.46
	>=dev-perl/XML-Parser-2.30
	>=dev-perl/XML-Writer-0.600"
DEPEND="${RDEPEND}"
