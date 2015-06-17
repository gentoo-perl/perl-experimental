# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KAZEBURO
MODULE_VERSION="0.01"
inherit perl-module

DESCRIPTION="Add stash to CGI::Application"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/CGI-Application-3.310.0
"
DEPEND="
	${RDEPEND}
"
