# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.902
inherit perl-module

DESCRIPTION='(Minor) XS acceleration for PPI'
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
	# File::Spec 0.82 ( 0.820.0 )
	echo \>=virtual/perl-File-Spec-0.82
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
}
perl_meta_runtime() {
	# PPI 1.000 ( 1.0.0 )
	echo \>=dev-perl/PPI-1.0.0
	# perl 5.005 ( 5.5.0 )
	echo \>=dev-lang/perl-5.5.0
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
