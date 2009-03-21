# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=BPEDERSE
inherit perl-module

DESCRIPTION="a perl-specific system for writing Asynchronous web applications"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Class-Accessor"

SRC_TEST=do
