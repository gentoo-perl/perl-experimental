# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=PSHANGOV
MODULE_VERSION=1.14
inherit perl-module

DESCRIPTION='Base class for injecting distributions into CPAN sources'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
	# File::Remove 0.34 ( 0.340.0 )
	echo \>=dev-perl/File-Remove-0.340.0
	# Test::More 0.42 ( 0.420.0 )
	echo \>=virtual/perl-Test-Simple-0.42
	# Test::Script 1.02 ( 1.20.0 )
	echo \>=dev-perl/Test-Script-1.20.0
}
perl_meta_runtime() {
	# CPAN 1.36 ( 1.360.0 )
	echo \>=virtual/perl-CPAN-1.360.0
	# CPAN::Checksums 1.05 ( 1.50.0 )
	echo \>=dev-perl/CPAN-Checksums-1.50.0
	# File::Basename 2.6 ( 2.600.0 )
	# echo \>=dev-lang/perl-2.600.0
	# File::Copy 2.02 ( 2.20.0 )
	# echo \>=dev-lang/perl-2.20.0
	# File::Path 1.00 ( 1.0.0 )
	echo \>=virtual/perl-File-Path-1.00
	# File::Spec 0.80 ( 0.800.0 )
	echo \>=virtual/perl-File-Spec-0.80
	# File::chmod 0.30 ( 0.300.0 )
	echo \>=dev-perl/File-chmod-0.300.0
	# File::stat 1.00 ( 1.0.0 )
	# echo \>=dev-lang/perl-1.0.0
	# Params::Util 0.21 ( 0.210.0 )
	echo \>=dev-perl/Params-Util-0.210.0
	# perl v5.6.0 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
src_test() {
	echo o conf init | cpan
	perl-module_src_test
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
