# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.093002
inherit perl-module

DESCRIPTION='a transformer to replace "wikidoc" data regions with Pod5 elements'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox 0.10 ( 0.100.0 )
	echo \>=dev-perl/Moose-Autobox-0.100.0
	# Pod::Elemental 0.092941 ( 0.92.941 )
	echo \>=dev-perl/Pod-Elemental-0.92.941
	# Pod::Elemental::Transformer
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Types
	echo dev-perl/Pod-Elemental
	# Pod::Weaver::Role::Dialect
	echo dev-perl/Pod-Weaver
	# Pod::WikiDoc 0.18 ( 0.180.0 )
	echo \>=dev-perl/Pod-WikiDoc-0.180.0
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
}
perl_meta_test() {
	# Pod::Elemental
	echo dev-perl/Pod-Elemental
	# Pod::Elemental::Transformer::Pod5
	echo dev-perl/Pod-Elemental
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# strict
	echo dev-lang/perl
	# warnings
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
