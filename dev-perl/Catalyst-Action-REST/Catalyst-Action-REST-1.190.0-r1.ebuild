# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=FREW
MODULE_VERSION=1.19
inherit perl-module

DESCRIPTION='Automated REST Method Dispatching'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/release-pod-syntax.t
)
# Module::Pluggable::Object -> Module-Pluggable
# LWP::UserAgent -> libwww-perl
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.300
	>=dev-perl/Class-Inspector-1.130.0
	dev-perl/JSON-MaybeXS
	>=dev-perl/MRO-Compat-0.100.0
	dev-perl/Module-Pluggable
	>=dev-perl/Moose-1.30.0
	>=dev-perl/Params-Validate-0.760.0
	dev-perl/URI-Find
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=dev-perl/libwww-perl-5.0.0
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-Requires
	)
"
