# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DRTECH
MODULE_VERSION=0.64
inherit perl-module

DESCRIPTION='An API for communicating with ElasticSearch'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# File::Temp 0.20 ( 0.200.0 )
	echo \>=virtual/perl-File-Temp-0.200.0
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
}
perl_meta_runtime() {
	# Any::URI::Escape
	echo dev-perl/Any-URI-Escape
	# Carp
	echo dev-lang/perl
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# ElasticSearch::SearchBuilder 0.18 ( 0.180.0 )
	echo \>=dev-perl/ElasticSearch-SearchBuilder-0.180.0
	# Encode
	echo virtual/perl-Encode
	# Exporter
	echo virtual/perl-Exporter
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp 0.22 ( 0.220.0 )
	echo \>=virtual/perl-File-Temp-0.220.0
	# HTTP::Lite
	echo dev-perl/HTTP-Lite
	# HTTP::Request
	echo dev-perl/HTTP-Message
	# HTTP::Tiny
	echo virtual/perl-HTTP-Tiny
	# IO::Handle
	echo virtual/perl-IO
	# IO::Socket
	echo virtual/perl-IO
	# IO::Uncompress::Inflate
	echo virtual/perl-IO-Compress
	# JSON
	echo dev-perl/JSON
	# LWP::ConnCache
	echo dev-perl/libwww-perl
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# POSIX
	echo dev-lang/perl
	# Scalar::Util 1.07 ( 1.70.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.70.0
	# Task::Weaken
	echo dev-perl/Task-Weaken
	# URI
	echo dev-perl/URI
	# YAML
	echo dev-perl/yaml
	# constant
	echo virtual/perl-constant
	# overload
	echo dev-lang/perl
	# parent
	echo virtual/perl-parent
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# ElasticSearch::SearchBuilder
	echo dev-perl/ElasticSearch-SearchBuilder
	# Test::Differences
	echo dev-perl/Test-Differences
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
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
