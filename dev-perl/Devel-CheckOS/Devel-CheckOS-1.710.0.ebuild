# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DCANTRELL
MODULE_VERSION=1.71
inherit perl-module

DESCRIPTION='check what OS we'\''re running on'
LICENSE="|| ( Artistic GPL-2 )"
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
}
perl_meta_runtime() {
	# Data::Compare 1.21 ( 1.210.0 )
	echo \>=dev-perl/Data-Compare-1.210.0
	# File::Find::Rule 0.28 ( 0.280.0 )
	echo \>=dev-perl/File-Find-Rule-0.280.0
	# File::Temp 0.19 ( 0.190.0 )
	echo \>=virtual/perl-File-Temp-0.190.0
	# Test::More 0.62 ( 0.620.0 )
	echo \>=virtual/perl-Test-Simple-0.62
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
