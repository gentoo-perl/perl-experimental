# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MATTHEWG
inherit perl-module

DESCRIPTION="Implementation of AOL's OSCAR protocol for instant messaging"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=virtual/perl-Digest-MD5-2.0
	>=virtual/perl-Scalar-List-Utils-1.0
	virtual/perl-Time-HiRes
	virtual/perl-MIME-Base64"
DEPEND=">=virtual/perl-Module-Build-0.26
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/XML-Parser
	)"
