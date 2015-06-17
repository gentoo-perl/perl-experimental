# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=1.101
inherit perl-module

DESCRIPTION='Perl Web Server Gateway Interface Specification'
LICENSE="CC-SA-1.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
"
RDEPEND="

"
