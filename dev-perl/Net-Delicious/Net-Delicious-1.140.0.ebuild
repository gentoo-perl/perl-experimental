# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=1.14
inherit perl-module

DESCRIPTION='OOP for the del.icio.us API'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=virtual/perl-Module-Build-0.36
}
perl_meta_build() {
	# Test::Simple 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
}
perl_meta_runtime() {
	# Config::Simple 2 ( 2.0.0 )
	echo \>=dev-perl/Config-Simple-2.0.0
	# Crypt::SSLeay
	echo dev-perl/Crypt-SSLeay
	# Date::Parse 2.27 ( 2.270.0 )
	echo \>=dev-perl/TimeDate-2.270.0
	# File::Spec 0.8 ( 0.800.0 )
	echo \>=virtual/perl-File-Spec-0.80
	# FileHandle 2 ( 2.0.0 )
	# echo \>=dev-lang/perl-2.0.0
	# HTTP::Request
	echo dev-perl/HTTP-Message
	# IO::AtomicFile 2.1 ( 2.100.0 )
	echo \>=dev-perl/IO-stringy-2.100.0
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# Log::Dispatch 2 ( 2.0.0 )
	echo \>=dev-perl/log-dispatch-2.0.0
	# Time::HiRes 1.65 ( 1.650.0 )
	echo \>=virtual/perl-Time-HiRes-1.650.0
	# URI
	echo dev-perl/URI
	# XML::Simple 2 ( 2.0.0 )
	echo \>=dev-perl/XML-Simple-2.0.0
	# YAML 0.35 ( 0.350.0 )
	echo \>=dev-perl/yaml-0.350.0
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
