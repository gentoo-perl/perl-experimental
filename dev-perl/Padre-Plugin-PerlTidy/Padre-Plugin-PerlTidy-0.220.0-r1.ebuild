# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=AZAWAWI
MODULE_VERSION=0.22
VIRTUALX_REQUIRED="test"
inherit perl-module virtualx

DESCRIPTION='Format perl files using Perl::Tidy'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=app-editors/padre-0.920.0
	>=dev-perl/Params-Util-1.40.0
	>=dev-perl/Perl-Tidy-20101217.0.0
	>=dev-lang/perl-5.8.2
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.620.0
	test? (
		>=virtual/perl-Test-Simple-0.420.0
	)
"

src_test() {
	VIRTUALX_COMMAND="perl-module_src_test" virtualmake
}
