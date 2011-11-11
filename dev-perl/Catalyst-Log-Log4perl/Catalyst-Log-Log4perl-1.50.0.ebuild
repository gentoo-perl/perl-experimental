# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=1.05
inherit perl-module

DESCRIPTION='DEPRECATED (see Log::Log4perl::Catalyst)'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_runtime() {
	# Catalyst 5.60 ( 5.600.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.600.0
	# Data::Dump
	echo dev-perl/Data-Dump
	# Log::Log4perl 1.04 ( 1.40.0 )
	echo \>=dev-perl/Log-Log4perl-1.04
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Params::Validate
	echo dev-perl/Params-Validate
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
