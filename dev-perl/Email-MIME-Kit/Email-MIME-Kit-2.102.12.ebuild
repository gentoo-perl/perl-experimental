# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=2.102012
inherit perl-module

DESCRIPTION='build messages from templates'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Email::MIME 1.900 ( 1.900.0 )
	echo \>=dev-perl/Email-MIME-1.900.0
	# Email::MIME::Creator
	echo dev-perl/Email-MIME
	# Email::MessageID 1.400 ( 1.400.0 )
	echo \>=dev-perl/Email-MessageID-1.400.0
	# Encode
	echo virtual/perl-Encode
	# File::Basename
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# JSON 2 ( 2.0.0 )
	echo \>=dev-perl/JSON-2.0.0
	# Moose 0.65 ( 0.650.0 )
	echo \>=dev-perl/Moose-0.650.0
	# Moose::Role
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# String::RewritePrefix
	echo dev-perl/String-RewritePrefix
	# Test::Deep
	echo dev-perl/Test-Deep
	# YAML::XS
	echo dev-perl/YAML-LibYAML
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# strict
	echo dev-lang/perl
	# utf8
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
SRC_TEST="do"
