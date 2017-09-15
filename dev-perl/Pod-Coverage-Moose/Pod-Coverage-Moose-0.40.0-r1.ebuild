# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=MMCLERIC
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION='Pod::Coverage extension for Moose'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_build() {
	# FindBin
	echo dev-lang/perl
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Pod
	echo dev-perl/Test-Pod
	# Test::Pod::Coverage
	echo dev-perl/Test-Pod-Coverage
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Class::MOP
	echo dev-perl/Moose
	# Moose 0.24 ( 0.240.0 )
	echo \>=dev-perl/Moose-0.240.0
	# Perl6::Junction
	echo dev-perl/Perl6-Junction
	# Pod::Coverage
	echo dev-perl/Pod-Coverage
	# namespace::clean 0.05 ( 0.50.0 )
	echo \>=dev-perl/namespace-clean-0.50.0
}
DEPEND="
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
