# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MSTROUT
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="Zlib Compression for Catalyst"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.700.600
	virtual/perl-IO-Compress
	dev-perl/MRO-Compat
"
DEPEND="${RDEPEND}"
SRC_TEST="do"

notice() {
	ewarn "Catalyst::Plugin::Compress::Zlib is deprecated in favour of Catalyst::Plugin::Compress"
	ewarn "see dev-perl/Catalyst-Plugin-Compress"
}

pkg_pretend() {
	notice;
}
pkg_postinst() {
	notice;
}
