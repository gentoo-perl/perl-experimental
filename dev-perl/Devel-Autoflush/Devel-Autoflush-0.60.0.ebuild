# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="Set autoflush from the command line"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=""
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.170.0
	test? (
		virtual/perl-CPAN-Meta
		>=virtual/perl-CPAN-Meta-Requirements-2.120.900
		virtual/perl-File-Spec
		>=dev-perl/IO-CaptureOutput-1.80.0
		virtual/perl-Scalar-List-Utils
		virtual/perl-Test-Simple
		virtual/perl-version
	)
"
