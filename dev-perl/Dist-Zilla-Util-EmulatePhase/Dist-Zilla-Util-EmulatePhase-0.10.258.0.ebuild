# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01025800
inherit perl-module

DESCRIPTION="Nasty tools for probing Dist::Zilla's internal state."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	>=dev-perl/Dist-Zilla-4.0.0 $(comment Dist::Zilla::Prereqs)
	dev-perl/Hash-Merge-Simple
	dev-perl/Moose
	dev-perl/Moose-Autobox
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	dev-perl/Sub-Exporter
	dev-perl/Try-Tiny
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.5.100
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	>=dev-perl/Test-Fatal-0.003 $(comment 0.3.0)
	>=virtual/perl-Test-Simple-0.96 $(comment 0.960.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
