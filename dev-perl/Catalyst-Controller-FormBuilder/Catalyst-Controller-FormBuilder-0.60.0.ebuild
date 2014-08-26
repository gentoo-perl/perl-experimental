# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=MSTROUT
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="Catalyst FormBuilder Base Controller"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+template"

DEPEND="
	>=dev-perl/CGI-FormBuilder-3.20.0
	>=dev-perl/Catalyst-Runtime-5.700.0
	>=dev-perl/MRO-Compat-0.90.0
	>=dev-perl/Test-WWW-Mechanize-Catalyst-0.370.0
	>=dev-perl/Tie-IxHash-1.210.0
	>=dev-perl/Class-Data-Inheritable-0.40.0
	>=dev-perl/Class-Inspector-1.130.0
	>=virtual/perl-Scalar-List-Utils-1.190.0
	template? (
			>=dev-perl/Catalyst-View-TT-0.230.0
	)
"
RDEPEND="${DEPEND}"

SRC_TEST="do"
