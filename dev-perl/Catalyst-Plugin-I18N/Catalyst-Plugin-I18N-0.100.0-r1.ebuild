# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="I18N for Catalyst"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Catalyst-Runtime
	>=virtual/perl-Locale-Maketext-Simple-0.190.0
	>=virtual/perl-I18N-LangTags-0.350.0
	dev-perl/Locale-Maketext-Lexicon
	>=dev-perl/MRO-Compat-0.100.0
"
RDEPEND=${DEPEND}

PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
