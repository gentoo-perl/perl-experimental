# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=PJCJ
MODULE_VERSION=0.76
inherit perl-module

DESCRIPTION="Code coverage metrics for Perl"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
RDEPEND="
	virtual/perl-Digest-MD5
	virtual/perl-Storable
"
DEPEND="
	${RDEPEND}
	virtual/perl-File-Spec $(comment Cwd in Makefile.PL)
	virtual/perl-Test-Simple $(comment Test::More)
	dev-perl/Test-Warn
"

SRC_TEST=do
