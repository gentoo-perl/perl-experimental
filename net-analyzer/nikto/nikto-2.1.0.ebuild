# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-analyzer/nikto/nikto-2.03.ebuild,v 1.1 2009/03/20 16:02:06 dertobi123 Exp $

EAPI=2

DESCRIPTION="Web Server vulnerability scanner."
HOMEPAGE="http://www.cirt.net/code/nikto.shtml"
SRC_URI="http://www.cirt.net/source/nikto/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ssl"

RDEPEND="dev-lang/perl
		net-analyzer/nmap
		ssl? (
			dev-libs/openssl
			dev-perl/Net-SSLeay
		)"

src_install() {

	insinto /etc
	doins "${FILESDIR}/nikto.conf" || die "doins failed"

	dobin nikto.pl || die "dobin failed"
	dosym /usr/bin/nikto.pl /usr/bin/nikto || die "dobin failed"

	dodir /usr/share/nikto || die "dodir failed"
	insinto /usr/share/nikto
	doins -r plugins templates docs || die "doins failed"

	dodoc docs/*.txt || die "dodoc failed"
	dohtml docs/nikto_manual.html || die "dohtml failed"
	doman docs/nikto.1 || die "doman failed"
}

pkg_postinst() {
	elog 'Default configuration file is "/etc/nikto.conf"'
}
