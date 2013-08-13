# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/perl-File-Temp/perl-File-Temp-0.220.0-r2.ebuild,v 1.2 2013/02/18 23:19:55 zmedico Exp $

DESCRIPTION="Virtual for ${PN#perl-}"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="|| ( =dev-lang/perl-5.18* ~perl-core/${PN#perl-}-${PV}  )"
