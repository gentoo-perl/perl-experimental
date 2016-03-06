# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DROLSKY
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION='an extension of Params::Validate using Moose'\''s types'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Devel::Caller
	echo dev-perl/Devel-Caller
	# Moose 0.58 ( 0.580.0 )
	echo \>=dev-perl/Moose-0.580.0
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# Params::Validate 0.88 ( 0.880.0 )
	echo \>=dev-perl/Params-Validate-0.880.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Moose::Role
	echo dev-perl/Moose
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# overload
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
