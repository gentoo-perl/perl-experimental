# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ADAMK
MODULE_VERSION=1.12
inherit perl-module

DESCRIPTION='Common rules for searching for Perl things'
LICENSE=" || ( Artistic GPL-2 )"
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
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
}
perl_meta_runtime() {
	# File::Find::Rule 0.20 ( 0.200.0 )
	echo \>=dev-perl/File-Find-Rule-0.200.0
	# File::Spec 0.82 ( 0.820.0 )
	echo \>=virtual/perl-File-Spec-0.82
	# Params::Util 0.38 ( 0.380.0 )
	echo \>=dev-perl/Params-Util-0.380.0
	# Parse::CPAN::Meta 1.38 ( 1.380.0 )
	echo \>=virtual/perl-Parse-CPAN-Meta-1.38
	# perl 5.00503 ( 5.5.30 )
	echo \>=dev-lang/perl-5.5.30
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
