# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="The Elegant MVC Web Application Framework - runtime version"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/namespace-clean
	>=dev-perl/Scope-Upper-0.06
	>=dev-perl/MooseX-Emulate-Class-Accessor-Fast-0.00801
	>=dev-perl/Moose-0.73
	>=dev-perl/MooseX-MethodAttributes-0.05
	>=dev-perl/Class-C3-Adopt-NEXT-0.07
	>=dev-perl/Class-MOP-0.79
	dev-perl/Cgi-Simple
	dev-perl/Data-Dump
	dev-perl/File-Modified
	dev-perl/HTML-Parser
	>=dev-perl/HTTP-Body-1.04
	>=dev-perl/libwww-perl-5.813
	>=dev-perl/HTTP-Request-AsCGI-0.5
	>=virtual/perl-Module-Pluggable-3.01
	>=dev-perl/Path-Class-0.09
	>=dev-perl/Text-SimpleTable-0.03
	>=dev-perl/Tree-Simple-1.15
	dev-perl/Tree-Simple-VisitorFactory
	>=dev-perl/URI-1.35
	dev-perl/MRO-Compat
	dev-perl/B-Hooks-OP-Check-StashChange
"

SRC_TEST=do
