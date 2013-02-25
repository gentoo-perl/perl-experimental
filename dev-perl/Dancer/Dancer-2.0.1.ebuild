# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=SUKRIA
MODULE_VERSION=2.000001
inherit perl-module

DESCRIPTION='Lightweight yet powerful web application framework'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="2"
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
	# Carp
	echo dev-lang/perl
	# Config::Any
	echo dev-perl/Config-Any
	# Cwd
	echo virtual/perl-File-Spec
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Digest::SHA
	echo virtual/perl-Digest-SHA
	# Digest::SHA1
	echo dev-perl/Digest-SHA1
	# Encode
	echo virtual/perl-Encode
	# Exporter 5.57 ( 5.570.0 )
	echo \>=virtual/perl-Exporter-5.570.0
	# Fcntl
	echo dev-lang/perl
	# File::Basename
	echo dev-lang/perl
	# File::Copy
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# HTTP::Body
	echo dev-perl/HTTP-Body
	# HTTP::Date
	echo dev-perl/HTTP-Date
	# HTTP::Headers
	echo dev-perl/HTTP-Message
	# HTTP::Server::Simple::PSGI
	echo dev-perl/HTTP-Server-Simple-PSGI
	# IO::File
	echo virtual/perl-IO
	# JSON
	echo dev-perl/JSON
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# MIME::Base64 3.13 ( 3.130.0 )
	echo \>=virtual/perl-MIME-Base64-3.130.0
	# MIME::Types
	echo dev-perl/MIME-Types
	# Moo 0.009014 ( 0.9.14 )
	echo \>=dev-perl/Moo-0.9.14
	# Moo::Role
	echo dev-perl/Moo
	# MooX::Types::MooseLike 0.16 ( 0.160.0 )
	echo \>=dev-perl/MooX-Types-MooseLike-0.160.0
	# MooX::Types::MooseLike::Base
	echo dev-perl/MooX-Types-MooseLike
	# MooX::Types::MooseLike::Numeric
	echo dev-perl/MooX-Types-MooseLike
	# POSIX
	echo dev-lang/perl
	# Plack::Request
	echo dev-perl/Plack
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Template
	echo dev-perl/Template-Toolkit
	# Template::Tiny
	echo dev-perl/Template-Tiny
	# Test::Builder
	echo virtual/perl-Test-Simple
	# Test::More
	echo virtual/perl-Test-Simple
	# URI
	echo dev-perl/URI
	# URI::Escape
	echo dev-perl/URI
	# YAML::Any
	echo dev-perl/yaml
	# overload
	echo dev-lang/perl
	# parent
	echo virtual/perl-parent
	# perl 5.00503 ( 5.5.30 )
	echo \>=dev-lang/perl-5.5.30
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Capture::Tiny 0.12 ( 0.120.0 )
	echo \>=dev-perl/Capture-Tiny-0.120.0
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Find
	echo dev-lang/perl
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp 0.22 ( 0.220.0 )
	echo \>=virtual/perl-File-Temp-0.220.0
	# FindBin
	echo dev-lang/perl
	# HTTP::Body
	echo dev-perl/HTTP-Body
	# HTTP::Request::Common
	echo dev-perl/HTTP-Message
	# HTTP::Server::Simple::PSGI
	echo dev-perl/HTTP-Server-Simple-PSGI
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# Path::Class
	echo dev-perl/Path-Class
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::MockTime
	echo dev-perl/Test-MockTime
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.92
	# Test::TCP 1.13 ( 1.130.0 )
	echo \>=dev-perl/Test-TCP-1.130.0
	# YAML
	echo dev-perl/yaml
	# YAML::Any
	echo dev-perl/yaml
	# utf8
	echo dev-lang/perl
	# vars
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
SRC_TEST="do"
