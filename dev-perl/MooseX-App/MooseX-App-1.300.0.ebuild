# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MAROS
MODULE_VERSION=1.30
inherit perl-module

DESCRIPTION='Write user-friendly command line apps with even less suffering'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# List::Util -> perl-Scalar-List-Utils
RDEPEND="
	dev-perl/Config-Any
	virtual/perl-Scalar-List-Utils
	virtual/perl-Module-Pluggable
	>=dev-perl/Moose-2.0.0
	dev-perl/MooseX-Types-Path-Class
	dev-perl/Path-Class
	dev-perl/Pod-Elemental
	dev-perl/namespace-autoclean
	>=dev-lang/perl-5.10.0

"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	dev-perl/Test-Most
	dev-perl/Test-NoWarnings
	$RDEPEND
"
SRC_TEST="do parallel"
