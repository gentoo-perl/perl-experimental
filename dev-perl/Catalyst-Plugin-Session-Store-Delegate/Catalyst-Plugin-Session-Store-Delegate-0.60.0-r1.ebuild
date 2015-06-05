# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="Delegate session storage to an application model object."

IUSE="test"

SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.270.0
	dev-perl/Moose
	dev-perl/namespace-clean
	dev-perl/MooseX-Emulate-Class-Accessor-Fast
	dev-perl/MRO-Compat
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
		virtual/perl-Test-Simple
	)
"
