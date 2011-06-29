# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.12060501
inherit perl-module

DESCRIPTION="Generating and Populating 'provides' in your META.yml"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+fromfile +package +class +metanoindex"
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/Dist-Zilla $(comment Role::MetaProvider since 1.7.0)
	>=dev-perl/Dist-Zilla-Util-EmulatePhase-0.10.1.10
	dev-perl/Moose
	$(comment Moose::Role)
	dev-perl/MooseX-Types
	$(comment MooseX::Types::Moose)
	dev-perl/namespace-autoclean
	metanoindex? (
			>=dev-perl/Dist-Zilla-4.200.4
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
	>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.0.40
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.96 $(comment Test::More 0.960.0)
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
