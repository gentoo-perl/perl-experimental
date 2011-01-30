# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION="0.007"
inherit perl-module

DESCRIPTION="Twitter when you release with Dist::Zilla"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-2.101.170
	>=dev-perl/Moose-0.99
	virtual/perl-libnet
	>=dev-perl/Net-Twitter-3
	>=dev-perl/WWW-Shorten-1
	>=dev-perl/namespace-autoclean-0.09
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Temp
	dev-perl/libwww-perl
	dev-perl/Path-Class
	dev-perl/Sub-Exporter
	>=virtual/perl-Test-Simple-0.88
	>=virtual/perl-ExtUtils-MakeMaker-6.31
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
