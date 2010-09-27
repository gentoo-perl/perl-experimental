# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=CHISEL
inherit perl-module

DESCRIPTION="Catch application errors and emit them somewhere"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.71001
	dev-perl/Class-Data-Accessor
	virtual/perl-IO
	dev-perl/MRO-Compat
	virtual/perl-version
	>=dev-perl/DateTime-0.42
	>=dev-perl/File-Slurp-9999.12
	>=dev-perl/MIME-Lite-3.023
	>=dev-perl/Path-Class-0.16"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.92
		dev-perl/Catalyst-Plugin-Authentication
		dev-perl/Catalyst-Plugin-ConfigLoader
		dev-perl/Catalyst-Plugin-StackTrace
		dev-perl/config-general
		>=dev-perl/File-Find-Rule-0.30
		virtual/perl-File-Path
	)"
