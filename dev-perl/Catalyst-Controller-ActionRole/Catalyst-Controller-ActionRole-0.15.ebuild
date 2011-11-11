# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Apply roles to action instances"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.250
	>=dev-perl/String-RewritePrefix-0.4.0
	|| ( >=dev-perl/Moose-1.990 dev-perl/Class-MOP )
	dev-perl/Moose
	dev-perl/MooseX-Types
	dev-perl/namespace-clean
	virtual/perl-Scalar-List-Utils
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	dev-perl/Catalyst-Action-REST
	virtual/perl-Test-Simple
	virtual/perl-parent
"
SRC_TEST=do
