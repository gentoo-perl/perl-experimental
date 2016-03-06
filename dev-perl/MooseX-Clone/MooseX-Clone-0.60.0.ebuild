# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="Fine grained cloning support for Moose objects."
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# Data::Visitor::Callback -> Data-Visitor
# Moose::Role -> Moose
RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Data-Visitor-0.240.0
	dev-perl/Hash-Util-FieldHash-Compat
	dev-perl/Moose
	virtual/perl-Storable
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.39.0
	test? (
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		virtual/perl-Scalar-List-Utils
		>=virtual/perl-Test-Simple-0.880.0
	)
"
