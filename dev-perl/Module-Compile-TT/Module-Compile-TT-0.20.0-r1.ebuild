# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="Preprocess Perl code with Template Toolkit and Module::Compile."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
# Template -> Template-Toolkit
RDEPEND="
	dev-perl/Module-Compile
	dev-perl/Template-Toolkit
	|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
"
DEPEND="$RDEPEND
	dev-perl/Module-Build
"
