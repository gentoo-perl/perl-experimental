# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ROKR
MODULE_VERSION=0.0020
inherit perl-module

DESCRIPTION='Handy package munging utilities'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# Test::Most
	echo dev-perl/Test-Most
}
perl_meta_runtime() {
	# Class::Load
	echo dev-perl/Class-Load
	# Clone
	echo dev-perl/Clone
	# Mouse
	echo dev-perl/Mouse
	# Sub::Install
	echo dev-perl/Sub-Install
	# Try::Tiny
	echo dev-perl/Try-Tiny
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
