# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_VERSION="1.002000"
MODULE_AUTHOR=HKCLARK

inherit perl-module

DESCRIPTION="Handle passing of status (success and error) messages between screens of a web application."

IUSE="test"

SLOT="0"

KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.8
	dev-perl/Sub-Name
	dev-perl/strictures
"
DEPEND="
	${DEPEND}
"
