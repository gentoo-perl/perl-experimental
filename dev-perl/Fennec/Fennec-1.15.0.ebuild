# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=EXODIST
MODULE_VERSION=1.015
inherit perl-module

DESCRIPTION='A test helper providing RSPEC, Workflows, Parallelization, and Encapsulation.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.40 ( 0.400.0 )
	echo \>=virtual/perl-Module-Build-0.400.0
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Exporter::Declare
	echo dev-perl/Exporter-Declare
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Mock::Quick 1.000 ( 1.0.0 )
	echo \>=dev-perl/Mock-Quick-1.0.0
	# Parallel::Runner 0.013 ( 0.13.0 )
	echo \>=dev-perl/Parallel-Runner-0.13.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# TAP::Parser
	echo virtual/perl-Test-Harness
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
