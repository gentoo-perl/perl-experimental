# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=RURBAN
MODULE_VERSION=3.0115
inherit perl-module

DESCRIPTION="JSON::XS for Cpanel, fast and correct serialising, also for 5.6.2"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/z_pod.t
	t/z_pod-coverage.t
	t/z_perl_minimum_version.t
	t/z_meta.t
	t/z_leaktrace.t
	t/z_kwalitee.t
)
# Pod::Text 2.80 -> podlators 
RDEPEND="
	>=virtual/perl-podlators-1.270.0
	>=virtual/perl-Pod-Usage-1.330.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-Test-Simple
	)
"
