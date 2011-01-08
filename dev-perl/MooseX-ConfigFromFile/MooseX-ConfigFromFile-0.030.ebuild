# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="An abstract Moose role for setting attributes from a configfile"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Moose-0.35
	>=dev-perl/MooseX-Types-Path-Class-0.04
	dev-perl/Try-Tiny
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-Fatal
	)"
SRC_TEST="do"
