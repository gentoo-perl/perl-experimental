# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ASH
MODULE_VERSION=1.003002
inherit perl-module

DESCRIPTION='first class try catch semantics for Perl, without source filters.'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/B-Hooks-EndOfScope-0.120.0
	>=dev-perl/B-Hooks-OP-Check-0.180.0
	>=dev-perl/B-Hooks-OP-PPAddr-0.30.0
	>=dev-perl/Devel-Declare-0.5.7
	dev-perl/Moose
	dev-perl/MooseX-Types
	>=dev-perl/Parse-Method-Signatures-1.3.12
	>=dev-perl/Scope-Upper-0.60.0
	>=dev-perl/Sub-Exporter-0.979.0
	>=dev-perl/Variable-Magic-0.280.0
	virtual/perl-XSLoader
	>=dev-perl/namespace-clean-0.200.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	>=dev-perl/ExtUtils-Depends-0.302.0
	test? (
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-Exception
	)
"
