# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=WREIS
MODULE_VERSION="0.00011"
inherit perl-module

DESCRIPTION="Automatic digest columns"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+md5 +sha +blowfish +gpg"
comment() { echo ''; }
RDEPEND="
	>=dev-perl/DBIx-Class-0.06002 $(comment 0.60.20)
	>=dev-perl/Sub-Name-0.04 $(comment 0.40.0)
	md5? (
		virtual/perl-digest-base
		virtual/perl-Digest-MD5
	)
	sha? (
		virtual/perl-digest-base
		virtual/perl-Digest-SHA
	)
	blowfish? (
		dev-perl/Crypt-Eksblowfish
	)
	gpg? (
		dev-perl/Crypt-OpenPGP
		dev-perl/Crypt-CAST5_PP
	)
"
DEPEND="${RDEPEND}
	virtual/perl-Test-Simple $(comment Test::More)
	dev-perl/DBD-SQLite
	dev-perl/Dir-Self
	virtual/perl-File-Spec
"
SRC_TEST="do"
