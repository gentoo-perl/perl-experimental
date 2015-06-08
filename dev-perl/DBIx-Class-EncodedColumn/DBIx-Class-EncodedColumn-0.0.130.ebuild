# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=WREIS
MODULE_VERSION=0.00013
inherit perl-module

DESCRIPTION="Automatically encode column values"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test minimal"

RDEPEND="
	>=dev-perl/DBIx-Class-0.60.20
	>=dev-perl/Sub-Name-0.40.0
	virtual/perl-Encode
	!minimal? (
		virtual/perl-Digest
		virtual/perl-Digest-SHA
		virtual/perl-Digest-MD5
		dev-perl/Crypt-OpenPGP
		dev-perl/math-pari
		dev-perl/Crypt-Eksblowfish
	)
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
	test? (
		dev-perl/DBD-SQLite
		dev-perl/Dir-Self
		virtual/perl-File-Spec
		virtual/perl-File-Temp
		virtual/perl-Test-Simple
	)
"
