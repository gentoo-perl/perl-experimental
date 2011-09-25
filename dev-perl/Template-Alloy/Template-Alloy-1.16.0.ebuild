# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=RHANDOM
MODULE_VERSION=1.016
inherit perl-module

DESCRIPTION="TT2/3, HT, HTE, Tmpl, and Velocity Engine"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_eumm_configure() {
	#perl 5.006

	#ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_eumm_prereq_pm() {
	# Digest::MD5
	echo virtual/perl-Digest-MD5
}
DEPEND="$(perl_eumm_configure) $(perl_eumm_prereq_pm)"
RDEPEND="$(perl_eumm_prereq_pm)"
SRC_TEST="do"
