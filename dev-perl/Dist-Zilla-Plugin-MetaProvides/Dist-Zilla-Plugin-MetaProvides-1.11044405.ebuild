# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Generating and Populating 'provides' in your META.yml"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+fromfile +package +class"
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-4
	dev-perl/Moose
	dev-perl/MooseX-Types
	dev-perl/namespace-autoclean
	dev-perl/Hash-Merge-Simple
"
PDEPEND="
	fromfile? (
		dev-perl/Dist-Zilla-Plugin-MetaProvides-FromFile
	)
	package? (
		dev-perl/Dist-Zilla-Plugin-MetaProvides-Package
	)
	class? (
		dev-perl/Dist-Zilla-Plugin-MetaProvides-Class
	)
"
DEPEND="
	>=virtual/perl-Module-Build-0.36.01
	dev-perl/Params-Util
	dev-perl/Sub-Exporter
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.88
	dev-perl/Try-Tiny
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
