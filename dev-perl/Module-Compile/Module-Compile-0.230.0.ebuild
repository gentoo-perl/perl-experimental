# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=INGY
MODULE_VERSION=0.23
inherit perl-module

DESCRIPTION="Perl Module Optimization"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Digest-SHA1-2.13 $(comment 2.130.0)
	virtual/perl-Filter $(comment Filter::Util::Call)
	>=dev-lang/perl-5.8.3
"
DEPEND="${RDEPEND}"

SRC_TEST=do
