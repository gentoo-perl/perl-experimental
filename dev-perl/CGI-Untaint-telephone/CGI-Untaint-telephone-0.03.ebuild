# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=TJC
inherit perl-module

DESCRIPTION="CGI::Untaint plugin for telephone numbers"
HOMEPAGE="http://search.cpan.org/search?query=CGI-Untaint-telephone&mode=dist"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND=">=dev-perl/CGI-Untaint-1.26"
