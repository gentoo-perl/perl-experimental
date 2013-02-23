# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=FAYLAND
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION='PerlTidy in Dist::Zilla'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Dist::Zilla 2.100880 ( 2.100.880 )
	echo \>=dev-perl/Dist-Zilla-2.100.880
	# File::Copy
	echo dev-lang/perl
	# File::Next
	echo dev-perl/File-Next
	# Perl::Tidy
	echo dev-perl/perltidy
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
