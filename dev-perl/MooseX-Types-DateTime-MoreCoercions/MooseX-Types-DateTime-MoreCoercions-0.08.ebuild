# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/MooseX-Types-DateTime-ButMaintained/MooseX-Types-DateTime-ButMaintained-0.11.ebuild,v 1.1 2009/11/10 10:18:36 robbat2 Exp $

EAPI=2

MODULE_AUTHOR=ILMARI
inherit perl-module

DESCRIPTION="Extensions to MooseX::Types::DateTime"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Moose-0.41
	>=dev-perl/MooseX-Types-0.14
	>=dev-perl/namespace-clean-0.08
	>=dev-perl/Time-Duration-Parse-0.04
	>=dev-perl/MooseX-Types-0.04
	>=dev-perl/MooseX-Types-DateTime-0.07
	>=dev-perl/DateTime-0.43.02
	>=dev-perl/DateTimeX-Easy-0.085
"
DEPEND="${RDEPEND}
	test? ( >=dev-perl/Test-Exception-0.27
		>=dev-perl/Test-use-ok-0.02
	)"

SRC_TEST=do
