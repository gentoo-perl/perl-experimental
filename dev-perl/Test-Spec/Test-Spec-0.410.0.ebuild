# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=PHILIP
MODULE_VERSION=0.41
inherit perl-module

DESCRIPTION='Write tests in a declarative specification style'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Exporter
	echo virtual/perl-Exporter
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Package::Stash 0.23 ( 0.230.0 )
	echo \>=dev-perl/Package-Stash-0.230.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# TAP::Parser
	echo virtual/perl-Test-Harness
	# Test::Deep 0.103 ( 0.103.0 )
	echo \>=dev-perl/Test-Deep-0.103
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Trap
	echo dev-perl/Test-Trap
	# Tie::IxHash
	echo dev-perl/Tie-IxHash
	# constant
	# echo virtual/perl-constant
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
