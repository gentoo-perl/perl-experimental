# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.11
inherit perl-module

DESCRIPTION="A lightweight Crypt/Digest convenience API"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test minimal"

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
	dev-perl/Crypt-CBC
	dev-perl/Crypt-Rijndael
	virtual/perl-Digest-SHA
	!minimal? (
		dev-perl/Crypt-Twofish
		dev-perl/Crypt-Blowfish
		dev-perl/Crypt-DES
		dev-perl/Crypt-RIPEMD160
		dev-perl/Digest-Whirlpool
		virtual/perl-Digest-MD5
		dev-perl/Digest-HMAC
	)
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		virtual/perl-Test-Simple
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
		dev-perl/Test-Exception
	)
"

pkg_setup() {
	if use minimal; then
		ewarn "This ebuild installs by default CBC, Rijndael and SHA."
		ewarn "If you need other crypt libs, install them!"
	fi
}
