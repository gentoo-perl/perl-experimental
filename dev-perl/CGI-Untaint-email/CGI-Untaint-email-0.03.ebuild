# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit perl-module

DESCRIPTION="Plugin for CGI::Untaint for email"
HOMEPAGE="http://search.cpan.org/search?query=CGI-Untaint-email&mode=dist"
SRC_URI="mirror://cpan/authors/id/M/MI/MIYAGAWA/${P}.tar.gz"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"

DEPEND=">=dev-perl/CGI-Untaint-1.26
	>=dev-perl/Email-Valid-0.179
	>=dev-perl/MailTools-1.77"
