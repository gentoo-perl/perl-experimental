# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=SAMV
inherit perl-module

DESCRIPTION="Include constants from POD"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=virtual/perl-PodParser-1.13"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.18 )"
