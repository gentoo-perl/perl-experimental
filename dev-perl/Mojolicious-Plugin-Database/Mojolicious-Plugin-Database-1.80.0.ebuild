# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MADCAT
MODULE_VERSION=1.08
inherit perl-module

DESCRIPTION='"proper" handling of DBI based connections in Mojolicious'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# DBI
	echo dev-perl/DBI
	# Mojo::Base
	echo dev-perl/Mojolicious
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# DBD::SQLite
	echo dev-perl/DBD-SQLite
	# File::Temp
	echo virtual/perl-File-Temp
	# Mojolicious::Lite
	echo dev-perl/Mojolicious
	# Test::Mojo
	echo dev-perl/Mojolicious
	# Test::More
	echo virtual/perl-Test-Simple
	# Try::Tiny
	echo dev-perl/Try-Tiny
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
