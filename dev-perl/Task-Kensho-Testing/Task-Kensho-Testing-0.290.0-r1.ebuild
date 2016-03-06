# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.29
inherit perl-module

DESCRIPTION='A glimpse at an Enlightened Perl (testing tools).'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+testsimple +testmost +testfatal +testpod +testpodcoverage \
	 +testmemorycycle +develcover +testdeep +testrequires +testnowarnings"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.360.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.360.0
}
feature() {
	local name="$1";
	shift;
	echo "$name? (";
	echo "$@";
	echo ")";
}

perl_meta_runtime() {
	feature testsimple 			virtual/perl-Test-Simple
	feature testmost   			dev-perl/Test-Most
	feature testfatal			dev-perl/Test-Fatal
	feature testpod 			dev-perl/Test-Pod
	feature testpodcoverage 	dev-perl/Test-Pod-Coverage
	feature testmemorycycle 	dev-perl/Test-Memory-Cycle
	feature develcover 			dev-perl/Devel-Cover
	feature testdeep 			dev-perl/Test-Deep
	feature testrequires 		dev-perl/Test-Requires
	feature testnowarnings 		dev-perl/Test-NoWarnings
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
