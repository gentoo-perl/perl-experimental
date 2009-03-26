# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=NAOYA
inherit perl-module

DESCRIPTION="For using CGI::Application under FastCGI"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/CGI-Application-3.0
	>=dev-perl/FCGI-0.60
"
