# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_VERSION=1.4207
MODULE_AUTHOR=DCOPPIT
inherit perl-module

DESCRIPTION="Perl extension to help cache output of time-intensive CGI scripts"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Tie-Restore
	virtual/perl-File-Spec
	dev-perl/Cache-Cache
	virtual/perl-Storable
"
# URI::Escape -> URI
DEPEND="${RDEPEND}
	dev-perl/URI
	test? (
		dev-perl/File-Slurp
		virtual/perl-Test-Simple
		dev-perl/Error
	)
"
src_prepare() {
	local PERLCODE
	cd "${S}"
	IFS='' read -r -d '' PERLCODE <<'CODE'
print unless 	( $. >= 12 && $. <= 13 )
			||	( $. >= 34 && $. <= 38 )
			||	( $. >= 44 && $. <= 47 )
CODE
	perl -i -nle "${PERLCODE}" Makefile.PL
	perl-module_src_prepare
}
