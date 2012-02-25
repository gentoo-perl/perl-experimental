# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DHOSS
MODULE_VERSION="0.15"
inherit perl-module

DESCRIPTION="Validator for Catalyst with FormValidator::Simple"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.300.0
	>=dev-perl/FormValidator-Simple-0.280.0
	dev-perl/Catalyst-Plugin-FormValidator"
DEPEND="${RDEPEND}"
