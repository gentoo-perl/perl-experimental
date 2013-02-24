# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BOBERNST
MODULE_VERSION=2.0.0
inherit perl-module

DESCRIPTION='fetching weather information from weather.com'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Carp
	# echo dev-lang/perl
	# Class::Struct
	# echo dev-lang/perl
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# HTTP::Request
	echo dev-perl/HTTP-Message
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# Locale::Maketext
	echo virtual/perl-locale-maketext
	# Storable
	echo virtual/perl-Storable
	# Test::MockObject
	echo dev-perl/Test-MockObject
	# Time::Format 1.0 ( 1.0.0 )
	echo \>=dev-perl/Time-Format-1.0.0
	# Time::Local
	echo virtual/perl-Time-Local
	# URI::Escape
	echo dev-perl/URI
	# XML::Simple
	echo dev-perl/XML-Simple
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
