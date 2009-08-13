# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Temporary files support for testing."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/File-NFSLock
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	>=dev-perl/Moose-0.87
	dev-perl/MooseX-Types-Path-Class
	>=dev-perl/namespace-clean-0.08
	dev-perl/Path-Class
	dev-perl/Sub-Exporter
"
# >=File-Path-2.04

DEPEND="${DEPEND}
	test? (
		dev-perl/Test-use-ok
	)
"
SRC_TEST="do"
