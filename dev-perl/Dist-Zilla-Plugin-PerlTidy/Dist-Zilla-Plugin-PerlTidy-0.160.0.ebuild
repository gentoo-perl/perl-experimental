# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=FAYLAND
MODULE_VERSION=0.16
inherit perl-module

DESCRIPTION='PerlTidy in Dist::Zilla'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Dist::Zilla 2.100880 ( 2.100.880 )
	echo \>=dev-perl/Dist-Zilla-2.100.880
	# File::Copy
	echo dev-lang/perl
	# Path::Iterator::Rule
	echo dev-perl/Path-Iterator-Rule
	# Perl::Tidy
	echo dev-perl/Perl-Tidy
}
perl_meta_test() {
	# File::Spec
	echo virtual/perl-File-Spec
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	# echo dev-lang/perl
	# Test::More
	echo virtual/perl-Test-Simple
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
