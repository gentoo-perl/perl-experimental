# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit versionator

MY_P=${PN}-$(delete_version_separator 2)
S=${WORKDIR}/${MY_P}
MODULE_AUTHOR=KANE
inherit perl-module

DESCRIPTION="API & CLI access to the CPAN mirrors"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

SRC_TEST=do
