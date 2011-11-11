# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.2
inherit perl-module

DESCRIPTION='DEPRECATED - Singleton to context'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.39 ( 0.390.0 )
	echo \>=virtual/perl-Module-Build-0.390.0
}
perl_meta_runtime() {
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
