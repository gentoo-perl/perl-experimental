# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BDFOY
MODULE_VERSION=1.41
inherit perl-module

DESCRIPTION='Check file attributes'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/pod.t
	t/pod_coverage.t
)
RDEPEND="
	>=virtual/perl-Test-Simple-1.1.6
"
DEPEND="
	>=dev-perl/Test-Manifest-1.210.0
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Test-utf8
	)
"
