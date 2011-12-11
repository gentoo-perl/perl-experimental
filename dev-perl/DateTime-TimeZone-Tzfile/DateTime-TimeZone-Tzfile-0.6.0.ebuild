# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.006
inherit perl-module

DESCRIPTION='tzfile (zoneinfo) timezone files'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build
	echo virtual/perl-Module-Build
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_build() {
	# Date::ISO8601
	echo dev-perl/Date-ISO8601
	# Date::JD 0.005 ( 0.5.0 )
	echo \>=dev-perl/Date-JD-0.5.0
	# IO::File 1.13 ( 1.130.0 )
	echo \>=virtual/perl-IO-1.13
	# Module::Build
	echo virtual/perl-Module-Build
	# Test::More
	echo virtual/perl-Test-Simple
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Date::ISO8601
	echo dev-perl/Date-ISO8601
	# Date::JD 0.005 ( 0.5.0 )
	echo \>=dev-perl/Date-JD-0.5.0
	# DateTime::TimeZone::SystemV 0.002 ( 0.2.0 )
	echo \>=dev-perl/DateTime-TimeZone-SystemV-0.2.0
	# IO::File 1.13 ( 1.130.0 )
	echo \>=virtual/perl-IO-1.13
	# IO::Handle 1.08 ( 1.80.0 )
	echo \>=virtual/perl-IO-1.08
	# Params::Classify
	echo dev-perl/Params-Classify
	# constant
	# echo virtual/perl-constant
	# integer
	echo dev-lang/perl
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
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
