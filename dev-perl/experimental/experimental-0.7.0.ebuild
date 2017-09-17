# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=LEONT
MODULE_VERSION=0.007
inherit perl-mb-tiny

DESCRIPTION='Experimental features made easy'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build::Tiny 0.034 ( 0.34.0 )
	echo \>=dev-perl/Module-Build-Tiny-0.34.0
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# feature
	# echo dev-lang/perl
	# perl 5.010 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
perl_meta_test() {
	# File::Spec
	echo virtual/perl-File-Spec
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	# echo dev-lang/perl
	# Test::More 0.89 ( 0.890.0 )
	echo \>=virtual/perl-Test-Simple-0.89
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
