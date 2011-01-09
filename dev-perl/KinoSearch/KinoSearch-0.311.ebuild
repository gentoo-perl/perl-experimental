# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

MODULE_AUTHOR=CREAMYG
inherit perl-module

DESCRIPTION="search engine library"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

COMMOND_DEPEND="
	>=dev-perl/Lingua-Stem-Snowball-0.952
	>=dev-perl/Lingua-StopWords-0.09
	dev-perl/Parse-RecDescent
	>=dev-perl/JSON-XS-1.53
"
RDEPEND="
	${COMMON_DEPEND}
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	!!<=dev-perl/KinoSearch-0.20
	>=virtual/perl-ExtUtils-CBuilder-0.18
	>=virtual/perl-ExtUtils-ParseXS-2.16
	>=virtual/perl-Devel-PPPort-3.13
"
kino_api_changed() {
	elog "This package ( $P ) includes a new API incompatible with <= 0.20."
	elog "If you need the old interface, see dev-perl/KinoSearch1"
}

pkg_postinst() {
	kino_api_changed;
}

pkg_pretend() {
	kino_api_changed;
	default
}
