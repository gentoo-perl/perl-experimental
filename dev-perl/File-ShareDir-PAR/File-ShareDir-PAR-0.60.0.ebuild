# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=SMUELLER
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="File::ShareDir with PAR support"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/File-ShareDir
	dev-perl/Params-Util
	>=dev-perl/Class-Inspector-1.120.0
	virtual/perl-File-Spec
"
DEPEND="${RDEPEND}"
