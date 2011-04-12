# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_VERSION=1.8
MODULE_AUTHOR=KMELTZ
inherit perl-module

DESCRIPTION="Manage Unix crypt-style password file"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/Digest-SHA1-2.0
	virtual/perl-MIME-Base64
	dev-perl/Crypt-PasswdMD5
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
