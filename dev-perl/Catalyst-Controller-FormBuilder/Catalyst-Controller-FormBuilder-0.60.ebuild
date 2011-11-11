# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MSTROUT
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="Catalyst FormBuilder Base Controller"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+template"

DEPEND="
	>=dev-perl/CGI-FormBuilder-3.02
	>=dev-perl/Catalyst-Runtime-5.700.0
	>=dev-perl/MRO-Compat-0.09
	>=dev-perl/Test-WWW-Mechanize-Catalyst-0.370.0
	>=dev-perl/Tie-IxHash-1.21
	>=dev-perl/Class-Data-Inheritable-0.04
	>=dev-perl/Class-Inspector-1.13
	>=virtual/perl-Scalar-List-Utils-1.19
	template? (
			>=dev-perl/Catalyst-View-TT-0.23
	)
"
RDEPEND="${DEPEND}"

SRC_TEST="do"
