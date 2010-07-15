# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MSCHILLI
inherit perl-module

DESCRIPTION="Limit data throughput"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND="dev-perl/Set-IntSpan
	>=dev-perl/Log-Log4perl-1.0
	>=dev-perl/yaml-0.62"
DEPEND="${RDEPEND}"
