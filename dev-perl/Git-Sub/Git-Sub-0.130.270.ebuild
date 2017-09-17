# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DOLMEN
MODULE_VERSION=0.130270
inherit perl-module

DESCRIPTION='git commands imported as System::Sub subs in git:: namespace'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_runtime() {
	# Carp
	echo virtual/perl-Carp
	# File::Which
	echo dev-perl/File-Which
	# System::Sub
	echo dev-perl/System-Sub
	# strict
	echo dev-lang/perl
}
perl_meta_test() {
	# Cwd
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
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
PERL_RM_FILES=(
	t/author-test-eol.t
)
SRC_TEST="do"
