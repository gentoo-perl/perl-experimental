# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=MRAMBERG
inherit perl-module

DESCRIPTION="I18N for Catalyst"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Catalyst-Runtime
	virtual/perl-Locale-Maketext-Simple
	dev-perl/locale-maketext-lexicon
	dev-perl/MRO-Compat
"
