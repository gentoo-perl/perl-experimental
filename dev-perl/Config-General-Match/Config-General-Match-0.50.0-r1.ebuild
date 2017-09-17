# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MGRAHAM
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION="Add <Location> and <LocationMatch> style matching toi Config::General"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	virtual/perl-Test-Simple
	dev-perl/Config-General
	dev-perl/Hash-Merge
"
DEPEND="$RDEPEND
	dev-perl/Module-Build"

PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
