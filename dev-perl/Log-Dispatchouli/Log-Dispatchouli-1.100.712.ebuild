# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit versionator
MY_P=${PN}-$(delete_version_separator 2 )
S=${WORKDIR}/${MY_P}
MODULE_AUTHOR=RJBS

inherit perl-module

DESCRIPTION="Simple wrapper around Log::Dispatch"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-perl/Try-Tiny-0.04
	dev-perl/log-dispatch
	dev-perl/Log-Dispatch-Array
	dev-perl/String-Flogger"

SRC_TEST=do
