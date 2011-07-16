# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=5.80024
inherit perl-module

DESCRIPTION="The Elegant MVC Web Application Framework - runtime version"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
COMMON_DEPEND="
	dev-perl/List-MoreUtils
	>=dev-perl/namespace-autoclean-0.09
	>=dev-perl/namespace-clean-0.13
	>=dev-perl/B-Hooks-EndOfScope-0.08
	>=dev-perl/MooseX-Emulate-Class-Accessor-Fast-0.00903
	|| ( >=dev-perl/Moose-1.990 >=dev-perl/Class-MOP-0.95 )
	>=dev-perl/Moose-1.03
	>=dev-perl/MooseX-MethodAttributes-0.190.0
	>=dev-perl/MooseX-Role-WithOverloading-0.05

	>=dev-perl/Class-C3-Adopt-NEXT-0.07
	>=dev-perl/Cgi-Simple-1.1.09
	dev-perl/Data-Dump
	dev-perl/Data-OptList

	dev-perl/HTML-Parser
	>=dev-perl/HTTP-Body-1.40.0
	>=dev-perl/libwww-perl-5.814

	>=dev-perl/HTTP-Request-AsCGI-1.0

	>=virtual/perl-Module-Pluggable-3.9
	>=dev-perl/Path-Class-0.09
	virtual/perl-Scalar-List-Utils
	dev-perl/Sub-Exporter
	>=dev-perl/Text-SimpleTable-0.03
	virtual/perl-Time-HiRes
	>=dev-perl/Tree-Simple-1.15
	dev-perl/Tree-Simple-VisitorFactory
	>=dev-perl/URI-1.35
	virtual/perl-Text-Balanced
	dev-perl/MRO-Compat
	>=dev-perl/MooseX-Getopt-0.25
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Common
	>=dev-perl/String-RewritePrefix-0.004

	dev-perl/B-Hooks-OP-Check-StashChange
	!<=dev-perl/Catalyst-View-Mason-0.17
	!<=dev-perl/Catalyst-Devel-1.190.0

"
RDEPEND="
	${COMMON_DEPEND}
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Exception
		dev-perl/Class-Data-Inheritable
	)
"

SRC_TEST=do
