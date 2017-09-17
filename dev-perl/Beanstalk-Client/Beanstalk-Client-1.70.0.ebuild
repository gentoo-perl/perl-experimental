# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=GBARR
MODULE_VERSION=1.07
inherit perl-module

DESCRIPTION='Client to communicate with beanstalkd server'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Class::Accessor::Fast
	echo dev-perl/Class-Accessor
	# IO::Socket::INET
	echo virtual/perl-IO
	# Socket
	echo virtual/perl-Socket
	# YAML::Syck
	echo dev-perl/YAML-Syck
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
