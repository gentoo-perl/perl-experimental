# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=LYOKATO
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="Validation with simple chains of constraints"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Class-Accessor-0.220.0
	>=dev-perl/Class-Inspector-1.13
	>=dev-perl/Class-Data-Inheritable-0.04
	>=dev-perl/UNIVERSAL-require-0.10
	dev-perl/MailTools
	>=dev-perl/Email-Valid-0.15
	>=dev-perl/Email-Valid-Loose-0.40.0
	>=dev-perl/Date-Calc-5.4
	>=dev-perl/Tie-IxHash-1.21
	>=dev-perl/yaml-0.390.0
	>=dev-perl/List-MoreUtils-0.16
	virtual/perl-Scalar-List-Utils
	>=dev-perl/DateTime-Format-Strptime-1.70.0
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
