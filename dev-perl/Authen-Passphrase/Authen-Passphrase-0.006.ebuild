# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ZEFRAM
inherit perl-module

DESCRIPTION="hashed passwords/passphrases as objects"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Authen-DecHpwd-2.003
	>=dev-perl/Crypt-Blowfish-2.00
	dev-perl/Crypt-DES
	>=dev-perl/Crypt-Eksblowfish-0.005
	>=dev-perl/Crypt-MySQL-0.03
	>=dev-perl/Crypt-PasswdMD5-1.0
	>=dev-perl/Crypt-UnixCrypt_XS-0.08
	dev-perl/Data-Entropy
	>=virtual/perl-digest-base-1.00
	>=dev-perl/Digest-MD4-1.2
	>=virtual/perl-Digest-MD5-1.9953
	dev-perl/Digest-SHA1
	>=virtual/perl-MIME-Base64-2.21
	>=dev-perl/Module-Runtime-0.005
	dev-perl/Params-Classify
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
