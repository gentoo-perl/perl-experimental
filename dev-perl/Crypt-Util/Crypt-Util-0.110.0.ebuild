# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.11
inherit perl-module

DESCRIPTION="A lightweight Crypt/Digest convenience API"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# URI::Escape -> URI
RDEPEND="
	>=dev-perl/Moose-0.920.0
	virtual/perl-Digest
	dev-perl/Sub-Exporter
	virtual/perl-Storable
	dev-perl/Data-GUID
	>=dev-perl/namespace-clean-0.80.0
	virtual/perl-MIME-Base64
	dev-perl/URI
	dev-perl/crypt-cbc
	dev-perl/Crypt-Rijndael
	virtual/perl-Digest-SHA
"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-use-ok
		dev-perl/Test-Exception
	)"

SRC_TEST=do

pkg_setup() {
	ewarn "This ebuild installs by default CBC, Rijndael and SHA."
	ewarn "If you need other crypt libs, install them!"
}
