# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=OFFERK
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION='MooseX-App-Cmd'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS=""
#KEYWORDS="~amd64 ~x86"
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
	# App::Cmd 0.3 ( 0.300.0 )
	echo \>=dev-perl/App-Cmd-0.300.0
	# Getopt::Long::Descriptive
	echo dev-perl/Getopt-Long-Descriptive
	# Moose 0.86 ( 0.860.0 )
	echo \>=dev-perl/Moose-0.860
	# MooseX::Getopt 0.18 ( 0.180.0 )
	echo \>=dev-perl/MooseX-Getopt-0.180.0
	# Test::use::ok
	echo dev-perl/Test-use-ok
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="broken"
