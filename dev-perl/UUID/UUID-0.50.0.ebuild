# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=LZAP
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION='Perl extension for using UUID interfaces as defined in e2fsprogs.'
LICENSE="Artistic"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
DEPEND="
	$(perl_meta_configure)
"
RDEPEND="

"
SRC_TEST="do"
