# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MIROD
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION='a re-usable XPath engine'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_runtime() {
	# Test::More
	echo virtual/perl-Test-Simple
}
PERL_RM_FILES=( "t/pod.t" "t/pod-coverage.t" )
DEPEND="
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
