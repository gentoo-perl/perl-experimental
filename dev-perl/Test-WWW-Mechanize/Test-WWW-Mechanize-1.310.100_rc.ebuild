# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Test-WWW-Mechanize/Test-WWW-Mechanize-1.30.ebuild,v 1.1 2010/06/12 11:58:40 tove Exp $

EAPI=4

MODULE_AUTHOR=PETDANCE
MODULE_VERSION="1.31_01"
inherit perl-module

DESCRIPTION="Testing-specific WWW::Mechanize subclass"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
#PATCHES=(
#	"${FILESDIR}/${PV}/fix_dns-r2.patch"
#)
comment() { echo '';}
RDEPEND="
	dev-perl/Carp-Assert-More
	dev-perl/HTML-Tree $(comment HTML::TreeBuilder)
	>=dev-perl/HTTP-Server-Simple-0.42 $(comment 0.420.0)
	$(comment HTTP::Server::Simple::CGI ^^ )
	>=dev-perl/libwww-perl-6.20.0
	>=virtual/perl-Test-Simple-0.94 $( 0.940.0 Test::Builder::Tester 1.09 )
	>=dev-perl/Test-LongString-0.150 $(comment 0.150.0)
	virtual/perl-Test-Simple $(comment Test::More)
	dev-perl/URI $(comment URI::file)
	>=dev-perl/WWW-Mechanize-1.680.0
"
DEPEND="${RDEPEND}"

SRC_TEST="do"
