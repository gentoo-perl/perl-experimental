# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=NINE
MODULE_VERSION=2.20
inherit perl-module

DESCRIPTION="Perl Template Attribute Language - TAL for Perl!"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
comment() { true;}
RDEPEND="
		$(comment Test::Harness 2.00)
		>=virtual/perl-Test-Harness-2.00 $(comment 2.0.0)

		$(comment Scalar::Util 1.07)
		>=virtual/perl-Scalar-List-Utils-1.70.0

		$(comment MKDoc-XML 0.72)
		>=dev-perl/MKDoc-XML-0.72 $(comment 0.720.0)

		$(comment Digest::MD5)
		virtual/perl-Digest-MD5
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
