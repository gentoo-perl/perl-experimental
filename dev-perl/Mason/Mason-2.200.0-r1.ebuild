# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=JSWARTZ
MODULE_VERSION=2.20
inherit perl-module

DESCRIPTION='Powerful, high-performance templating for the web and beyond'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Capture::Tiny
	echo dev-perl/Capture-Tiny
	# Class::Unload
	echo dev-perl/Class-Unload
	# Devel::GlobalDestruction
	echo dev-perl/Devel-GlobalDestruction
	# Exception::Class
	echo dev-perl/Exception-Class
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# Guard
	echo dev-perl/Guard
	# IPC::System::Simple
	echo dev-perl/IPC-System-Simple
	# JSON
	echo dev-perl/JSON
	# Log::Any 0.08 ( 0.80.0 )
	echo \>=dev-perl/Log-Any-0.80.0
	# Memoize
	echo virtual/perl-Memoize
	# Method::Signatures::Simple
	echo dev-perl/Method-Signatures-Simple
	# Moose 1.15 ( 1.150.0 )
	echo \>=dev-perl/Moose-1.150.0
	# MooseX::HasDefaults 0.03 ( 0.30.0 )
	echo \>=dev-perl/MooseX-HasDefaults-0.30.0
	# MooseX::StrictConstructor 0.13 ( 0.130.0 )
	echo \>=dev-perl/MooseX-StrictConstructor-0.130.0
	# Scalar::Util 1.01 ( 1.10.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.10.0
	# Try::Tiny
	echo dev-perl/Try-Tiny
}
perl_meta_test() {
	# Test::Class::Most
	echo dev-perl/Test-Class-Most
	# Test::LongString
	echo dev-perl/Test-LongString
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
