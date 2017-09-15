# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=PHRED
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION='Load URI::Escape::XS preferentially over URI::Escape'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+recommended"
recommended() {
	echo dev-perl/URI-Escape-XS
}
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# URI::Escape
	echo dev-perl/URI
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	recommended? (
		$(recommended)
	)
"
RDEPEND="
	$(perl_meta_runtime)
	recommended? (
		$(recommended)
	)
"
