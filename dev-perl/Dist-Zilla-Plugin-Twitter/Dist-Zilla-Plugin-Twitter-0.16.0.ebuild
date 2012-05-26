# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DOHERTY
MODULE_VERSION=0.016
inherit perl-module

DESCRIPTION='Twitter when you release with Dist::Zilla'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_runtime() {
	# Config::INI::Reader
	echo dev-perl/Config-INI
	# Config::INI::Writer
	echo dev-perl/Config-INI
	# Dist::Zilla 4 ( 4.0.0 )
	echo \>=dev-perl/Dist-Zilla-4.0.0
	# Dist::Zilla::Role::AfterRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::TextTemplate
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Util
	echo dev-perl/Dist-Zilla
	# File::Spec
	echo virtual/perl-File-Spec
	# Moose 0.99 ( 0.990.0 )
	echo \>=dev-perl/Moose-0.990
	# Net::Twitter 3 ( 3.0.0 )
	echo \>=dev-perl/Net-Twitter-3.0.0
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# WWW::Shorten 3.02 ( 3.20.0 )
	echo \>=dev-perl/WWW-Shorten-3.20.0
	# WWW::Shorten::Simple
	echo dev-perl/WWW-Shorten-Simple
	# WWW::Shorten::TinyURL
	echo dev-perl/WWW-Shorten
	# namespace::autoclean 0.09 ( 0.90.0 )
	echo \>=dev-perl/namespace-autoclean-0.90.0
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# utf8
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Dist::Zilla::App::Tester
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::Releaser
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Tester
	echo dev-perl/Dist-Zilla
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# HTTP::Response
	echo dev-perl/HTTP-Message
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# Params::Util
	echo dev-perl/Params-Util
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# base
	# echo virtual/perl-base
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
