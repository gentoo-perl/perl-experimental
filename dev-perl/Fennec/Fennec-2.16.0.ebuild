# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=EXODIST
MODULE_VERSION=2.016
inherit perl-module

DESCRIPTION='A testers toolbox, and best friend'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.42 ( 0.420.0 )
	echo \>=dev-perl/Module-Build-0.420.0
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Exporter::Declare
	echo dev-perl/Exporter-Declare
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Mock::Quick 1.106 ( 1.106.0 )
	echo \>=dev-perl/Mock-Quick-1.106.0
	#1 Parallel::Runner 0.013 ( 0.13.0 )
	echo \>=dev-perl/Parallel-Runner-0.13.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::Exception 0.29 ( 0.290.0 )
	echo \>=dev-perl/Test-Exception-0.290.0
	# Test::Simple 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::Warn
	echo dev-perl/Test-Warn
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
