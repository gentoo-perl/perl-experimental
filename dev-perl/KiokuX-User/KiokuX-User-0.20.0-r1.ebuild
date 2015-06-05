# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.02"
inherit perl-module

DESCRIPTION="A generic role for user objects stored in KiokuDB"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/KiokuDB-0.90.0
	>=dev-perl/Moose-0.630.0
	dev-perl/MooseX-Role-Parameterized
	dev-perl/MooseX-Types-Authen-Passphrase
	dev-perl/Sub-Exporter
	dev-perl/namespace-clean
"
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
	)
"
