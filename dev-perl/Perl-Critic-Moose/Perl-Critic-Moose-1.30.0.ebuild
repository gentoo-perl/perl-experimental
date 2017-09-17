# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DROLSKY
MODULE_VERSION=1.03

inherit perl-module

DESCRIPTION="Policies for Perl::Critic concerned with using the Moose object system"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# Perl::Critic::Policy
# Perl::Critic::Utils
# Perl::Critic::Utils::PPI
RDEPEND="
	>=dev-perl/Perl-Critic-1.98.0
	dev-perl/Readonly
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-CPAN-Meta-2.120.900
		virtual/perl-File-Spec
		>=virtual/perl-Test-Simple-0.960.0
	)
"
