# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ASH
MODULE_VERSION=1.003002
inherit perl-module

DESCRIPTION='first class try catch semantics for Perl, without source filters.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# B::Hooks::OP::Check 0.18 ( 0.180.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.180.0
	# B::Hooks::OP::PPAddr 0.03 ( 0.30.0 )
	echo \>=dev-perl/B-Hooks-OP-PPAddr-0.30.0
	# ExtUtils::Depends 0.302 ( 0.302.0 )
	echo \>=dev-perl/extutils-depends-0.302.0
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# B::Hooks::EndOfScope 0.12 ( 0.120.0 )
	echo \>=dev-perl/B-Hooks-EndOfScope-0.120.0
	# B::Hooks::OP::Check 0.18 ( 0.180.0 )
	echo \>=dev-perl/B-Hooks-OP-Check-0.180.0
	# B::Hooks::OP::PPAddr 0.03 ( 0.30.0 )
	echo \>=dev-perl/B-Hooks-OP-PPAddr-0.30.0
	# Devel::Declare 0.005007 ( 0.5.7 )
	echo \>=dev-perl/Devel-Declare-0.5.7
	# Moose
	echo dev-perl/Moose
	# MooseX::Types
	echo dev-perl/MooseX-Types
	# Parse::Method::Signatures 1.003012 ( 1.3.12 )
	echo \>=dev-perl/Parse-Method-Signatures-1.3.12
	# Scope::Upper 0.06 ( 0.60.0 )
	echo \>=dev-perl/Scope-Upper-0.60.0
	# Sub::Exporter 0.979 ( 0.979.0 )
	echo \>=dev-perl/Sub-Exporter-0.979.0
	# Variable::Magic 0.28 ( 0.280.0 )
	echo \>=dev-perl/Variable-Magic-0.280.0
	# XSLoader
	echo virtual/perl-XSLoader
	# namespace::clean 0.20 ( 0.200.0 )
	echo \>=dev-perl/namespace-clean-0.200.0
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
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
