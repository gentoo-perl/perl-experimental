# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=2.006
inherit perl-module

DESCRIPTION='a simple wrapper around Log::Dispatch'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	# echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# Log::Dispatch
	echo dev-perl/log-dispatch
	# Log::Dispatch::Array
	echo dev-perl/Log-Dispatch-Array
	# Log::Dispatch::File
	echo dev-perl/log-dispatch
	# Log::Dispatch::Screen
	echo dev-perl/log-dispatch
	# Log::Dispatch::Syslog
	echo dev-perl/log-dispatch
	# Params::Util
	echo dev-perl/Params-Util
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# String::Flogger
	echo dev-perl/String-Flogger
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Sub::Exporter::GlobExporter 0.002 ( 0.2.0 )
	echo \>=dev-perl/Sub-Exporter-GlobExporter-0.2.0
	# Sys::Syslog 0.16 ( 0.160.0 )
	echo \>=virtual/perl-Sys-Syslog-0.160.0
	# Try::Tiny 0.04 ( 0.40.0 )
	echo \>=dev-perl/Try-Tiny-0.40.0
	# overload
	echo dev-lang/perl
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# base
	# echo virtual/perl-base
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
