# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="OOP for the del.icio.us API"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-perl/libwww-perl
	>=dev-perl/yaml-0.35
	dev-perl/URI
	>=dev-perl/log-dispatch-2
	>=dev-perl/XML-Simple-2
	>=virtual/perl-Time-HiRes-1.65
	>=dev-perl/IO-stringy-2.1
	>=virtual/perl-File-Spec-0.8
	>=dev-perl/TimeDate-1.16
	>=dev-perl/Config-Simple-2
	dev-perl/Crypt-SSLeay"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.47 )"
