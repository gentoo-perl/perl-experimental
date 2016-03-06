# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DICHI
MODULE_VERSION=0.06000
inherit perl-module

DESCRIPTION="Container class for currency conversion/formatting"

IUSE="test"
SLOT="0"
KEYWORDS="~amd64 ~x86"

PERL_RM_FILES=(
	t/author-critic.t
	t/author-pod-spell.t
	t/release-pod-coverage.t
	t/release-pod-syntax.t
)
RDEPEND="
	dev-perl/Class-Accessor-Grouped
	dev-perl/Class-Inspector
	dev-perl/Finance-Currency-Convert-WebserviceX
	dev-perl/Locale-Currency-Format
	virtual/perl-Scalar-List-Utils
	dev-perl/Test-Exception
	dev-perl/Test-MockObject
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-Test-Simple
	)
"
