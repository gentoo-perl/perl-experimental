# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DWHEELER
MODULE_VERSION=2.83
inherit perl-module

DESCRIPTION='Subversion activity notification'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.2701 ( 0.270.100 )
	echo \>=virtual/perl-Module-Build-0.27.01
}
perl_meta_build() {
	# File::Spec
	echo virtual/perl-File-Spec
	# Module::Build 0.2701 ( 0.270.100 )
	echo \>=virtual/perl-Module-Build-0.27.01
	# Test::More 0.17 ( 0.170.0 )
	echo \>=virtual/perl-Test-Simple-0.17
}
perl_meta_runtime() {
	# Getopt::Long 2.34 ( 2.340.0 )
	echo \>=virtual/perl-Getopt-Long-2.340.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
