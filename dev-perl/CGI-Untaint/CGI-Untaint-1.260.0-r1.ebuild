# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=TMTM
MODULE_VERSION=1.26
inherit perl-module

DESCRIPTION="Process CGI input parameters."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=virtual/perl-Test-Simple-0.110.0
	>=dev-perl/UNIVERSAL-require-0.10.0"
DEPEND="$RDEPEND
	test? (
		dev-perl/CGI
	)
"
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
