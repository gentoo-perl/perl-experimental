# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.008
inherit perl-module

DESCRIPTION="hashed passwords/passphrases as objects"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

PERL_RM_FILES=(
	t/pod_syn.t
	t/pod_cvg.t
)
# Crypt::Eksblowfish::Uklblowfish ->
# Crypt::Eksblowfish::Bcrypt -> Crypt-Eksblowfish
# Data::Entropy::Algorithms -> Data-Entropy
RDEPEND="
	>=dev-perl/Authen-DecHpwd-2.3.0
	virtual/perl-Carp
	dev-perl/Crypt-DES
	>=dev-perl/Crypt-Eksblowfish-0.8.9
	>=dev-perl/Crypt-MySQL-0.30.0
	>=dev-perl/Crypt-PasswdMD5-1.0.0
	>=dev-perl/Crypt-UnixCrypt_XS-0.80.0
	dev-perl/Data-Entropy
	>=virtual/perl-Digest-1.0.0
	>=dev-perl/Digest-MD4-1.200.0
	>=virtual/perl-Digest-MD5-1.995.300
	virtual/perl-Digest-SHA
	>=virtual/perl-MIME-Base64-2.210.0
	>=dev-perl/Module-Runtime-0.11.0
	dev-perl/Params-Classify
	virtual/perl-parent
"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
	test? (
		>=virtual/perl-MIME-Base64-2.21
		virtual/perl-Test-Simple
	)
"
