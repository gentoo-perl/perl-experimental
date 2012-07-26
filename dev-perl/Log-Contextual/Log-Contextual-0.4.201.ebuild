# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=FREW
MODULE_VERSION=0.004201
inherit perl-module

DESCRIPTION='Simple logging interface with a contextual log'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::Fatal
	echo dev-perl/Test-Fatal
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Data::Dumper::Concise
	echo dev-perl/Data-Dumper-Concise
	# Exporter::Declare 0.105 ( 0.105.0 )
	echo \>=dev-perl/Exporter-Declare-0.105.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# perl v5.6.0 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
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
