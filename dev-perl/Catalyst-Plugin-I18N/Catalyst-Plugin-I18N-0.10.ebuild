# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="I18N for Catalyst"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Catalyst-Runtime
	>=virtual/perl-Locale-Maketext-Simple-0.19
	>=virtual/perl-i18n-langtags-0.35
	dev-perl/locale-maketext-lexicon
	>=dev-perl/MRO-Compat-0.10
"
RDEPEND=${DEPEND}
