# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=GBARR
MODULE_VERSION=1.03
inherit perl-module

DESCRIPTION="Restrict which sub are exported by a role"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=virtual/perl-Attribute-Handlers-0.880.0
	>=dev-perl/Moose-0.900.0
	virtual/perl-Test-Simple
"
DEPEND="${RDEPEND}"
