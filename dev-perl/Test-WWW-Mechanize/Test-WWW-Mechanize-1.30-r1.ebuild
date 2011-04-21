# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Test-WWW-Mechanize/Test-WWW-Mechanize-1.30.ebuild,v 1.1 2010/06/12 11:58:40 tove Exp $

EAPI=3

MODULE_AUTHOR=PETDANCE
inherit perl-module

DESCRIPTION="Testing-specific WWW::Mechanize subclass"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos"
IUSE="test"
PATCHES=(
	"${FILESDIR}/${PV}/fix_dns.patch"
)
RDEPEND=">=dev-perl/WWW-Mechanize-1.24
	dev-perl/Carp-Assert-More
	dev-perl/URI
	>=dev-perl/Test-LongString-0.12"
DEPEND="${RDEPEND}
	test? ( >=dev-perl/HTTP-Server-Simple-0.35
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"

SRC_TEST="do"
