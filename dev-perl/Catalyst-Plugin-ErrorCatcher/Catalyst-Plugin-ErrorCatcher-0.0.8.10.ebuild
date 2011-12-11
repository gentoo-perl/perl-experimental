# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=CHISEL
MODULE_VERSION=0.0.8.10
inherit perl-module

DESCRIPTION='Catch application errors and emit them somewhere'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# Catalyst
	echo dev-perl/Catalyst-Runtime
	# Catalyst::Controller
	echo dev-perl/Catalyst-Runtime
	# Catalyst::Plugin::Authentication 0.10010 ( 0.100.100 )
	echo \>=dev-perl/Catalyst-Plugin-Authentication-0.100.100
	# Catalyst::Plugin::ConfigLoader 0.22 ( 0.220.0 )
	echo \>=dev-perl/Catalyst-Plugin-ConfigLoader-0.220.0
	# Catalyst::Plugin::Session
	echo dev-perl/Catalyst-Plugin-Session
	# Catalyst::Plugin::Session::State::Cookie
	echo dev-perl/Catalyst-Plugin-Session-State-Cookie
	# Catalyst::Plugin::Session::Store::File
	echo dev-perl/Catalyst-Plugin-Session-Store-File
	# Catalyst::Plugin::StackTrace 0.10 ( 0.100.0 )
	echo \>=dev-perl/Catalyst-Plugin-StackTrace-0.100.0
	# Catalyst::Runtime 5.80 ( 5.800.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.0
	# Catalyst::Test
	echo dev-perl/Catalyst-Runtime
	# Config::General
	echo dev-perl/config-general
	# DateTime
	echo dev-perl/DateTime
	# File::Find::Rule
	echo dev-perl/File-Find-Rule
	# File::Path
	echo virtual/perl-File-Path
	# File::Slurp
	echo dev-perl/File-Slurp
	# FindBin::libs
	echo dev-perl/FindBin-libs
	# HTTP::Request::Common
	echo dev-perl/HTTP-Message
	# IO::File
	echo virtual/perl-IO
	# MIME::Lite
	echo dev-perl/MIME-Lite
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Path::Class
	echo dev-perl/Path-Class
	# Sys::Hostname
	echo dev-lang/perl
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.92
	# Test::UseAllModules
	echo dev-perl/Test-UseAllModules
	# base
	# echo virtual/perl-base
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# overload
	echo dev-lang/perl
	# version
	echo virtual/perl-version
}
perl_meta_runtime() {
	# Catalyst::ClassData
	echo dev-perl/Catalyst-Runtime
	# Data::Dump
	echo dev-perl/Data-Dump
	# DateTime
	echo dev-perl/DateTime
	# File::Slurp
	echo dev-perl/File-Slurp
	# File::Type
	echo dev-perl/File-Type
	# IO::File
	echo virtual/perl-IO
	# MIME::Lite
	echo dev-perl/MIME-Lite
	# Module::Pluggable::Object
	echo virtual/perl-Module-Pluggable
	# Moose
	echo dev-perl/Moose
	# Path::Class
	echo dev-perl/Path-Class
	# Sys::Hostname
	echo dev-lang/perl
	# perl 5.008004 ( 5.8.4 )
	echo \>=dev-lang/perl-5.8.4
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
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
