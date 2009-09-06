# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=TJC
inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Catalyst plugin for CGI::Untaint."
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/T/TJ/TJC/${P}.readme"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-perl/CGI-Untaint"
