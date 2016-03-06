# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.37
inherit perl-module

DESCRIPTION='Generic Session plugin - connect server side storage and client side state to maintain session data'
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
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::WWW::Mechanize::PSGI
	echo dev-perl/Test-WWW-Mechanize-PSGI
}
perl_meta_runtime() {
	# Catalyst::Runtime 5.71001 ( 5.710.10 )
	echo \>=dev-perl/Catalyst-Runtime-5.710.10
	# Digest
	echo virtual/perl-Digest
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Moose 0.76 ( 0.760.0 )
	echo \>=dev-perl/Moose-0.760.0
	# MooseX::Emulate::Class::Accessor::Fast 0.00801 ( 0.8.10 )
	echo \>=dev-perl/MooseX-Emulate-Class-Accessor-Fast-0.8.10
	# Object::Signature
	echo dev-perl/Object-Signature
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Tie::RefHash 1.34 ( 1.340.0 )
	echo \>=virtual/perl-Tie-RefHash-1.340.0
	# namespace::clean 0.10 ( 0.100.0 )
	echo \>=dev-perl/namespace-clean-0.100.0
	# perl v5.8.0 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
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
