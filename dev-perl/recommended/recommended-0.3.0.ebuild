# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.003
inherit perl-module

DESCRIPTION="Load recommended modules on demand when available"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Module-Runtime-0.14.0
	virtual/perl-version
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.170.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-Test-Simple
		>=virtual/perl-CPAN-Meta-2.120.900
	)
"
