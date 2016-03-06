# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=AMBS
MODULE_VERSION=2.12
inherit perl-module

DESCRIPTION='easy database connections for Dancer2 applications'
LICENSE=" || ( Artistic GPL-2 )"
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
	# HTTP::Request::Common
	echo dev-perl/HTTP-Message
	# Plack 1.0032 ( 1.3.200 )
	echo \>=dev-perl/Plack-1.3.200
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Dancer2 0.151000 ( 0.151.0 )
	echo \>=dev-perl/Dancer2-0.151.0
	# Dancer::Plugin::Database::Core 0.08 ( 0.80.0 )
	echo \>=dev-perl/Dancer-Plugin-Database-Core-0.80.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
