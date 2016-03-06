# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=CFRANKS
MODULE_VERSION=1.00
inherit perl-module

DESCRIPTION="\"Are you human\" tester!"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Captcha-reCAPTCHA-0.930.0
	>=dev-perl/Clone-0.310.0
	>=dev-perl/HTML-FormFu-1.0.0
	>=dev-perl/Moose-1.0.0
	>=dev-perl/MooseX-Attribute-Chained-1.0.1
	virtual/perl-Scalar-List-Utils
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-Test-Simple
	)
"
