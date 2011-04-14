# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=KENTNL
MODULE_VERSION="1.12044806"
inherit perl-module

DESCRIPTION="Generating and Populating 'provides' in your META.yml"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+fromfile +package +class +metanoindex"
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-Util-EmulatePhase-0.10.1.10
	dev-perl/Moose
	dev-perl/MooseX-Types
	dev-perl/namespace-autoclean
	metanoindex? (
		|| (
			>=dev-perl/Dist-Zilla-4.200.4
			dev-perl/Dist-Zilla-Plugin-MetaNoIndex
		)
	)
"
PDEPEND="
	fromfile? (
		dev-perl/Dist-Zilla-Plugin-MetaProvides-FromFile
	)
	package? (
		dev-perl/Dist-Zilla-Plugin-MetaProvides-Package
		metanoindex? (
			>=dev-perl/Dist-Zilla-Plugin-MetaProvides-Package-1.110.444.40
		)
	)
	class? (
		dev-perl/Dist-Zilla-Plugin-MetaProvides-Class
		metanoindex? (
			>=dev-perl/Dist-Zilla-Plugin-MetaProvides-Class-1.110.444.60
		)
	)
"
DEPEND="
	>=virtual/perl-Module-Build-0.36.01
	>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.0.40
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.88
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
