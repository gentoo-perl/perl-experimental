# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=GRODITI
MODULE_VERSION=0.001001
inherit perl-module

DESCRIPTION="Return a new instance a component on each request"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Moose
	virtual/perl-Scalar-List-Utils"
DEPEND="$RDEPEND
	virtual/perl-Test-Simple"

SRC_TEST=do
