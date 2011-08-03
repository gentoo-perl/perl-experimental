# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.03000000
inherit perl-module

DESCRIPTION="Tools for working with Gentoo Overlays"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-IO
	dev-perl/Data-Dump
	dev-perl/Moose
	dev-perl/MooseX-ClassAttribute
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-OneArgNew
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Path-Class
	dev-perl/Readonly
	dev-perl/Role-HasMessage
	dev-perl/Role-Identifiable
	dev-perl/Throwable
	dev-perl/Sub-Exporter
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.96
	dev-perl/Test-Output
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
