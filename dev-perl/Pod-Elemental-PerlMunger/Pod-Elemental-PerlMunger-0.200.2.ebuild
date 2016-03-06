# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.200002
inherit perl-module

DESCRIPTION="a thing that takes a string of Perl and rewrites its documentation"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-Encode
	dev-perl/List-AllUtils
	dev-perl/Moose
	dev-perl/PPI
	dev-perl/Params-Util
	>=dev-perl/Pod-Elemental-0.103.0
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-CPAN-Meta
		>=virtual/perl-CPAN-Meta-Requirements-2.120.900
		virtual/perl-File-Spec
		virtual/perl-Scalar-List-Utils
		>=virtual/perl-Test-Simple-0.960.0
		virtual/perl-version
		dev-perl/Test-Differences
	)
"
