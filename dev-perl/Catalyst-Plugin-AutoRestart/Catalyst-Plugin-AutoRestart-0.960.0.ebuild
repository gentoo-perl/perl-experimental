# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=JGOULAH
MODULE_VERSION=0.96
inherit perl-module

DESCRIPTION='Catalyst plugin to restart server '
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
	# Catalyst 5.90005 ( 5.900.50 )
	echo \>=dev-perl/Catalyst-Runtime-5.900.50
	# MRO::Compat 0.07 ( 0.70.0 )
	echo \>=dev-perl/MRO-Compat-0.70.0
	# Proc::ProcessTable 0.41 ( 0.410.0 )
	echo \>=dev-perl/Proc-ProcessTable-0.410.0
	# Text::SimpleTable 0.03 ( 0.30.0 )
	echo \>=dev-perl/Text-SimpleTable-0.30.0
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
