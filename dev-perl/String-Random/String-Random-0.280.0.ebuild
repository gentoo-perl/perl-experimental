# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=SHLOMIF
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="Perl module to generate random strings based on a pattern"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/cpan-changes.t
	t/pod.t
	t/style-trailing-space.t
)
RDEPEND="
	virtual/perl-Carp
	virtual/perl-Exporter
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.360.0
	test? (
		virtual/perl-Test-Simple
	)
"
