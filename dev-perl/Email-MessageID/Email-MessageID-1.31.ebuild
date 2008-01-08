# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

S=${WORKDIR}/Email-MessageID-1.31
DESCRIPTION="Generate world unique message-ids"
SRC_URI="mirror://cpan/authors/id/C/CW/CWEST/Email-MessageID-1.31.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/C/CW/CWEST/${P}.readme"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"

DEPEND="dev-perl/Email-Address"

