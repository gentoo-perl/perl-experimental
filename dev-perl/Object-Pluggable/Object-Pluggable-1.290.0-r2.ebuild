# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=HINRIK
MODULE_VERSION=1.29
inherit perl-module

DESCRIPTION='A base class for creating plugin-enabled objects'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.31 ( 6.310.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.31
}
perl_meta_build() {
	# Pod::Parser 1.36 ( 1.360.0 )
	echo \>=virtual/perl-Pod-Parser-1.360.0
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Task::Weaken
	echo dev-perl/Task-Weaken
	# constant 1.17 ( 1.170.0 )
	echo \>=virtual/perl-constant-1.170.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
