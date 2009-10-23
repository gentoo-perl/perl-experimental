# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="A lightweight Crypt/Digest convenience API"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Moose-0.92
	dev-perl/Sub-Exporter
	dev-perl/Data-GUID
	>=dev-perl/namespace-clean-0.08
	dev-perl/crypt-cbc
	dev-perl/Crypt-Rijndael
	virtual/perl-Digest-SHA
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-use-ok
	)"

SRC_TEST=do

pkg_setup() {
	ewarn "This ebuild installs by default CBC, Rijndael and SHA."
	ewarn "If you need other crypt libs, install them!"
}
