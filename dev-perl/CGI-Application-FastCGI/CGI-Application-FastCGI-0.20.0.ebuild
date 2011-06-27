# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NAOYA
MODULE_VERSION="0.02"
inherit perl-module

DESCRIPTION="For using CGI::Application under FastCGI"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/CGI-Application-3.0
	>=dev-perl/FCGI-0.60
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
