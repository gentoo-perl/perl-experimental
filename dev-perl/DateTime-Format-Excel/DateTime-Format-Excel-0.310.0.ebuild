# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ABURS
MODULE_VERSION="0.31"
inherit perl-module

DESCRIPTION="Convert between DateTime and Excel dates."

IUSE="test"

SLOT="0"
KEYWORDS="~amd64 ~x86"

PERL_RM_FILES=(
	t/00pod.t
)
RDEPEND="
	>=dev-perl/DateTime-0.180.0
"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
	test? (
		>=virtual/perl-Test-Simple-0.470.0
	)
"
