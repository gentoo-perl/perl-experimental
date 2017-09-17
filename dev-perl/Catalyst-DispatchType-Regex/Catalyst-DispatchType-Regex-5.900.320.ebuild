# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MGRIMES
MODULE_VERSION=5.90032
inherit perl-module

DESCRIPTION='Regex DispatchType'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_runtime() {
	# Moose
	echo dev-perl/Moose
	# Text::Balanced
	echo virtual/perl-Text-Balanced
	# Text::SimpleTable
	echo dev-perl/Text-SimpleTable
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
