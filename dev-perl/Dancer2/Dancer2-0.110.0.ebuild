# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=XSAWYERX
MODULE_VERSION=0.11
inherit perl-module

DESCRIPTION='Lightweight yet powerful web application framework'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# File::ShareDir::Install 0.03 ( 0.30.0 )
	echo \>=dev-perl/File-ShareDir-Install-0.30.0
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
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
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp 0.22 ( 0.220.0 )
	echo \>=virtual/perl-File-Temp-0.220.0
	# HTTP::Body
	echo dev-perl/HTTP-Body
	# HTTP::Date
	echo dev-perl/HTTP-Date
	# HTTP::Headers
	echo dev-perl/HTTP-Message
	# HTTP::Server::Simple::PSGI
	echo dev-perl/HTTP-Server-Simple-PSGI
	# Hash::Merge::Simple
	echo dev-perl/Hash-Merge-Simple
	# IO::File
	echo virtual/perl-IO
	# JSON
	echo dev-perl/JSON
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# MIME::Base64 3.13 ( 3.130.0 )
	echo \>=virtual/perl-MIME-Base64-3.130.0
	# MIME::Types
	echo dev-perl/MIME-Types
	# Moo 1.003000 ( 1.3.0 )
	echo \>=dev-perl/Moo-1.3.0
	# MooX::Types::MooseLike 0.16 ( 0.160.0 )
	echo \>=dev-perl/MooX-Types-MooseLike-0.160.0
	# MooX::Types::MooseLike::Base
	echo dev-perl/MooX-Types-MooseLike
	# Plack::Request
	echo dev-perl/Plack
	# Pod::Simple::Search
	echo virtual/perl-Pod-Simple
	# Return::MultiLevel
	echo dev-perl/Return-MultiLevel
	# Role::Tiny 1.003000 ( 1.3.0 )
	echo \>=dev-perl/Role-Tiny-1.3.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Template
	echo dev-perl/Template-Toolkit
	# Template::Tiny
	echo dev-perl/Template-Tiny
	# Test::Builder
	echo virtual/perl-Test-Simple
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.920.0
	# URI
	echo dev-perl/URI
	# YAML::Any
	echo dev-perl/yaml
	# parent
	echo virtual/perl-parent
	# perl 5.00503 ( 5.5.30 )
	echo \>=dev-lang/perl-5.5.30
}
perl_meta_test() {
	# Capture::Tiny 0.12 ( 0.120.0 )
	echo \>=dev-perl/Capture-Tiny-0.120.0
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Temp 0.22 ( 0.220.0 )
	echo \>=virtual/perl-File-Temp-0.220.0
	# HTTP::Body
	echo dev-perl/HTTP-Body
	# HTTP::Request::Common
	echo dev-perl/HTTP-Message
	# HTTP::Server::Simple::PSGI
	echo dev-perl/HTTP-Server-Simple-PSGI
	# IO::Handle
	echo virtual/perl-IO
	# LWP::Protocol::PSGI 0.06 ( 0.60.0 )
	echo \>=dev-perl/LWP-Protocol-PSGI-0.60.0
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::MockTime
	echo dev-perl/Test-MockTime
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.920.0
	# Test::Script
	echo dev-perl/Test-Script
	# Test::TCP 1.13 ( 1.130.0 )
	echo \>=dev-perl/Test-TCP-1.130.0
	# YAML
	echo dev-perl/yaml
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
SRC_TEST="do parallel"
