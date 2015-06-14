# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DERF
MODULE_VERSION=2.02
inherit perl-module

DESCRIPTION='unofficial interface to the efa.vrr.de German itinerary service'
LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=dev-perl/Module-Build-0.380.0
}
perl_meta_build() {
	# File::Slurp
	echo dev-perl/File-Slurp
	# Test::Compile
	echo dev-perl/Test-Compile
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Pod
	echo dev-perl/Test-Pod
}
perl_meta_runtime() {
	# Class::Accessor
	echo dev-perl/Class-Accessor
	# Exception::Class
	echo dev-perl/Exception-Class
	# Getopt::Long
	echo virtual/perl-Getopt-Long
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# XML::LibXML
	echo dev-perl/XML-LibXML
	# perl v5.10.1 ( 5.10.1 )
	echo \>=dev-lang/perl-5.10.1
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
