# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DMAKI
MODULE_VERSION=0.16008
inherit perl-module

DESCRIPTION='Parse and format PostgreSQL dates and times'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# DateTime 0.10 ( 0.100.0 )
	echo \>=dev-perl/DateTime-0.10
	# DateTime::Format::Builder 0.72 ( 0.720.0 )
	echo \>=dev-perl/DateTime-Format-Builder-0.720.0
	# DateTime::TimeZone 0.05 ( 0.50.0 )
	echo \>=dev-perl/DateTime-TimeZone-0.50.0
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
