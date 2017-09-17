# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=PERSICOM
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="Perl extension for prompting a user for information"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/TermReadKey-1.0
"
RDEPEND="${DEPEND}"
