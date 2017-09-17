# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="Authen::Passphrase type constraint and coercions"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

# Authen::Passphrase::RejectAll -> Authen-Passphrase
# MooseX::Types::Moose -> MooseX-Types
RDEPEND="
	dev-perl/Authen-Passphrase
	dev-perl/MooseX-Types
	dev-perl/namespace-clean
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.37.0
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Spec
		>=virtual/perl-Test-Simple-1.1.10
	)
"
