# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=SIMONW
MODULE_VERSION=0.7
inherit perl-module

DESCRIPTION='convenience methods for using Data::ICal with DateTime'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Warn
	echo dev-perl/Test-Warn
	# Test::NoWarnings
	echo dev-perl/Test-NoWarnings
	# Test::LongString
	echo dev-perl/Test-LongString
}
perl_meta_runtime() {
	# Class::Accessor
	echo dev-perl/Class-Accessor
	# Data::ICal 0.07 ( 0.70.0 )
	echo \>=dev-perl/Data-ICal-0.70.0
	# Clone
	echo dev-lang/perl
	# DateTime::Set
	echo dev-perl/DateTime-Set
	# DateTime::Format::ICal
	echo dev-perl/DateTime-Format-ICal
}
DEPEND="
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)

"
SRC_TEST="do"
