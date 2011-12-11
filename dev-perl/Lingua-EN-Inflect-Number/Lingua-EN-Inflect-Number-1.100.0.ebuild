# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=SIMON
MODULE_VERSION="1.1"
inherit perl-module

DESCRIPTION="Force number of words to singular or plural"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

DEPEND="
	dev-perl/Lingua-EN-Inflect
"
