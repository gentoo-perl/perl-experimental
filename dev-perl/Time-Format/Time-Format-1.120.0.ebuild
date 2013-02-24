# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ROODE
MODULE_VERSION=1.12
inherit perl-module

DESCRIPTION='Easy-to-use date/time formatting.'
LICENSE="as-is" # TODO Update
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
gentoo_datemanip_fix() {
	echo '<dev-perl/DateManip-6.0.0'
}
perl_meta_configure() {
	# Module::Build 0.4 ( 0.400.0 )
	echo \>=virtual/perl-Module-Build-0.400.0
}
perl_meta_build() {
	# Test::Simple 0.40 ( 0.400.0 )
	echo \>=virtual/perl-Test-Simple-0.400.0
}
perl_meta_runtime() {
	# Time::Local 1.07 ( 1.70.0 )
	echo \>=virtual/perl-Time-Local-1.07
}
DEPEND="
	$(gentoo_datemanip_fix)
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(gentoo_datemanip_fix)
	$(perl_meta_runtime)
"
SRC_TEST="do"
