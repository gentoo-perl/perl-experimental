# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/perl-Perl-OSType/perl-Perl-OSType-1.2.0-r1.ebuild,v 1.2 2013/02/18 23:18:57 zmedico Exp $

DESCRIPTION="Virtual for ${PN#perl-}"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="|| ( =dev-lang/perl-5.18* ~perl-core/${PN#perl-}-${PV}  )"
