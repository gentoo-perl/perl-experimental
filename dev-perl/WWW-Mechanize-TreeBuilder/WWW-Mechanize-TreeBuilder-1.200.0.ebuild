# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_VERSION=1.20000
MODULE_AUTHOR=ASH
inherit perl-module

DESCRIPTION="This module combines WWW::Mechanize and HTML::TreeBuilder."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Scalar::Util
RDEPEND="
	>=dev-perl/Moose-2.120.0
	dev-perl/HTML-Tree
	dev-perl/MooseX-Role-Parameterized
	virtual/perl-Scalar-List-Utils
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-WWW-Mechanize
	)"
