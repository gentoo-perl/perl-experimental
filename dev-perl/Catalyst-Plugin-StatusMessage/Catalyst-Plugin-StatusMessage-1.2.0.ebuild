# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_VERSION="1.002000"
MODULE_AUTHOR=HKCLARK

inherit perl-module

DESCRIPTION="Handle passing of status (success and error) messages between screens of a web application."

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.8
	dev-perl/Sub-Name
	dev-perl/strictures
"
DEPEND="
	${DEPEND}
"
SRC_TEST=do
