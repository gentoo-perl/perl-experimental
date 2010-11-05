# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=SMUELLER
inherit perl-module

DESCRIPTION="File::ShareDir with PAR support"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/File-ShareDir
	dev-perl/Params-Util
	>=dev-perl/Class-Inspector-1.12
	virtual/perl-File-Spec
"
DEPEND="${RDEPEND}"

SRC_TEST=do
