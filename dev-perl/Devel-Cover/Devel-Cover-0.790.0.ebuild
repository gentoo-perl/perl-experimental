# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=PJCJ
MODULE_VERSION=0.79
inherit perl-module

DESCRIPTION="Code coverage metrics for Perl"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+recommended"
comment() { echo ''; }
RDEPEND="
	virtual/perl-Digest-MD5
	virtual/perl-Storable
	recommended? (
		$(comment virtual/perl-Template-2.0.0)
		>=dev-perl/PPI-HTML-1.07 $(comment 1.70.0)
		>=dev-perl/perltidy-20060719.0.0
		>=dev-perl/Pod-Coverage-0.06 $(comment 0.60.0)
		$(comment Pod::Coverage::CountParents)
		dev-perl/Test-Differences
		dev-perl/Parallel-Iterator
		virtual/perl-JSON-PP
	)
"
DEPEND="
	${RDEPEND}
	virtual/perl-File-Spec $(comment Cwd in Makefile.PL)
	virtual/perl-Test-Simple $(comment Test::More)
	dev-perl/Test-Warn
"

SRC_TEST=do
