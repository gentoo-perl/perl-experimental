# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=CHISEL
MODULE_VERSION=0.0.8.5
inherit perl-module

DESCRIPTION="Catch application errors and emit them somewhere"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Class-Data-Accessor
	dev-perl/DateTime
	dev-perl/File-Slurp
	virtual/perl-IO
	dev-perl/MIME-Lite
	dev-perl/MRO-Compat
	>=dev-perl/Path-Class-0.16
"
DEPEND="${RDEPEND}
	dev-perl/Catalyst-Runtime
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/config-general
	dev-perl/File-Find-Rule
	dev-perl/FindBin-libs
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	virtual/perl-File-Path
	dev-perl/Moose
	>=virtual/perl-Test-Simple-0.92
	virtual/perl-version
"
SRC_TEST="do"
