# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=GPHAT
MODULE_VERSION="0.44"
inherit perl-module

DESCRIPTION="Method declaration with type checking"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=">=dev-perl/Moose-0.220.0
	>=dev-perl/Moose-1.990.0
	>=dev-perl/HTML-Template-Pro-0.650.0
	>=virtual/perl-Scalar-List-Utils-1.14
	>=dev-perl/Sub-Name-0.02"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.47
		>=dev-perl/Test-Exception-0.21
		>=dev-perl/Test-Pod-1.26
	)"
