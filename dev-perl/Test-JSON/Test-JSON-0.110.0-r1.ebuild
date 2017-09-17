# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=OVID
MODULE_VERSION=0.11
inherit perl-module

DESCRIPTION="Test JSON data"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/pod.t
	t/pod-coverage.t
)
RDEPEND="
	>=dev-perl/JSON-Any-1.200.0
	>=dev-perl/Test-Differences-0.470.0
"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
	test? (
		>=virtual/perl-Test-Simple-1.1.10
	)
"
