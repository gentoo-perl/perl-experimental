# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Implementation of AOL's OSCAR protocol for instant messaging"
HOMEPAGE="http://search.cpan.org/dist/Net-OSCAR/"
SRC_URI="mirror://cpan/authors/id/M/MA/MATTHEWG/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-lang/perl-5.6.1
	>=virtual/perl-Digest-MD5-2.0
	>=virtual/perl-Scalar-List-Utils-1.0
	virtual/perl-Time-HiRes
	virtual/perl-MIME-Base64"
DEPEND=">=virtual/perl-Module-Build-0.26
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/XML-Parser
	)"
