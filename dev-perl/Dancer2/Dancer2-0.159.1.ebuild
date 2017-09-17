# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=XSAWYERX
MODULE_VERSION=0.159001
inherit perl-module

DESCRIPTION='Lightweight yet powerful web application framework'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::ShareDir::Install 0.06 ( 0.60.0 )
	echo \>=dev-perl/File-ShareDir-Install-0.60.0
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_runtime() {
	# App::Cmd::Setup
	echo dev-perl/App-Cmd
	# Carp
	# echo virtual/perl-Carp
	# Class::Load
	echo dev-perl/Class-Load
	# Config::Any
	echo dev-perl/Config-Any
	# Cwd
	echo virtual/perl-File-Spec
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Digest::SHA
	echo virtual/perl-Digest-SHA
	# Encode
	echo virtual/perl-Encode
	# Exporter 5.57 ( 5.570.0 )
	echo \>=virtual/perl-Exporter-5.570.0
	# File::Path
	echo virtual/perl-File-Path
	# File::ShareDir
	echo dev-perl/File-ShareDir
	# File::Temp 0.22 ( 0.220.0 )
	echo \>=virtual/perl-File-Temp-0.220.0
	# HTTP::Body
	echo dev-perl/HTTP-Body
	# HTTP::Date
	echo dev-perl/HTTP-Date
	# HTTP::Headers
	echo dev-perl/HTTP-Message
	# HTTP::Tiny
	echo virtual/perl-HTTP-Tiny
	# Hash::Merge::Simple
	echo dev-perl/Hash-Merge-Simple
	# IO::File
	echo virtual/perl-IO
	# Import::Into
	echo dev-perl/Import-Into
	# JSON
	echo dev-perl/JSON
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# MIME::Base64 3.13 ( 3.130.0 )
	echo \>=virtual/perl-MIME-Base64-3.130.0
	# Module::Runtime
	echo dev-perl/Module-Runtime
	# Moo 1.003000 ( 1.3.0 )
	echo \>=dev-perl/Moo-1.3.0
	# MooX::Types::MooseLike 0.16 ( 0.160.0 )
	echo \>=dev-perl/MooX-Types-MooseLike-0.160.0
	# Plack 1.0029 ( 1.2.900 )
	echo \>=dev-perl/Plack-1.2.900
	# Plack::Middleware::FixMissingBodyInRedirect
	echo dev-perl/Plack-Middleware-FixMissingBodyInRedirect
	# Plack::Middleware::RemoveRedundantBody
	echo dev-perl/Plack-Middleware-RemoveRedundantBody
	# Pod::Simple::Search
	echo virtual/perl-Pod-Simple
	# Return::MultiLevel
	echo dev-perl/Return-MultiLevel
	# Role::Tiny 1.003000 ( 1.3.0 )
	echo \>=dev-perl/Role-Tiny-1.3.0
	# Safe::Isa
	echo dev-perl/Safe-Isa
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Template
	echo dev-perl/Template-Toolkit
	# Template::Tiny
	echo dev-perl/Template-Tiny
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.920.0
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# URI
	echo dev-perl/URI
	# YAML
	echo dev-perl/YAML
	# parent
	echo virtual/perl-parent
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_test() {
	# Capture::Tiny 0.12 ( 0.120.0 )
	echo \>=dev-perl/Capture-Tiny-0.120.0
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp 0.22 ( 0.220.0 )
	echo \>=virtual/perl-File-Temp-0.220.0
	# HTTP::Body
	echo dev-perl/HTTP-Body
	# HTTP::Cookies
	echo dev-perl/HTTP-Cookies
	# HTTP::Request::Common
	echo dev-perl/HTTP-Message
	# IO::Handle
	echo virtual/perl-IO
	# Plack::Response
	echo dev-perl/Plack
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::Memory::Cycle 1.04 ( 1.40.0 )
	echo \>=dev-perl/Test-Memory-Cycle-1.40.0
	# Test::MockTime
	echo dev-perl/Test-MockTime
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.920.0
	# YAML
	echo dev-perl/YAML
	# lib
	# echo virtual/perl-lib
	# utf8
	echo dev-lang/perl
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
