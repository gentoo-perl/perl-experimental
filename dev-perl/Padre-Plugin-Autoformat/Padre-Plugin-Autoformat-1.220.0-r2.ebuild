# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=AZAWAWI
MODULE_VERSION=1.22
inherit perl-module virtualx

DESCRIPTION="reformat your text within Padre"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# r: File::Basename -> perl
# r: File::Spec::Functions -> File-Spec
RDEPEND="
	>=app-editors/padre-0.570.0
	dev-perl/Text-Autoformat
	virtual/perl-File-Spec
"
# t: Test::More -> Test-Simple
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.360.100
	test? (
		>=dev-perl/Locale-Msgfmt-0.150.0
		virtual/perl-Test-Simple
	)
"
src_test() {
	VIRTUALX_COMMAND="perl-module_src_test" virtualmake
}
