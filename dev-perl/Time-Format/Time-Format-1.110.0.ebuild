# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ROODE
MODULE_VERSION="1.11"
inherit perl-module

DESCRIPTION="Easy-to-use date/time formatting"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Time-Local
	     <dev-perl/DateManip-6.0.0
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST=do
