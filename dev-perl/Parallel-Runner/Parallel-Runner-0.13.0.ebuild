# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=EXODIST
MODULE_VERSION=0.013
inherit perl-module

DESCRIPTION='An object to manage running things in parallel processes.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.40 ( 0.400.0 )
	echo \>=dev-perl/Module-Build-0.400.0
}
perl_meta_build() {
	# Test::Exception::LessClever
	echo dev-perl/Test-Exception-LessClever
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Child 0.009 ( 0.9.0 )
	echo \>=dev-perl/Child-0.9.0
	# POSIX
	echo dev-lang/perl
	# Time::HiRes
	echo virtual/perl-Time-HiRes
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
