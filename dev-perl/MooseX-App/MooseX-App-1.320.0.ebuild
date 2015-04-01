# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MAROS
MODULE_VERSION=1.32
inherit perl-module

DESCRIPTION='Write user-friendly command line apps with even less suffering'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# List::Util -> perl-Scalar-List-Utils
RDEPEND_upstream_missing="
	dev-perl/Text-WagnerFischer
	dev-perl/IO-Interactive
	dev-perl/TermReadKey
	dev-perl/File-HomeDir
"
RDEPEND="
	dev-perl/Config-Any
	virtual/perl-Scalar-List-Utils
	dev-perl/Module-Pluggable
	>=dev-perl/Moose-2.0.0
	dev-perl/MooseX-Types-Path-Class
	dev-perl/Path-Class
	dev-perl/Pod-Elemental
	dev-perl/namespace-autoclean
	>=dev-lang/perl-5.10.0
	${RDEPEND_upstream_missing}
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	test? (
		dev-perl/Test-Most
		dev-perl/Test-NoWarnings
	)
	$RDEPEND
"
