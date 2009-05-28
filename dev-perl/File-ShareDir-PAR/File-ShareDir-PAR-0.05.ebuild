# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=SMUELLER
inherit perl-module

DESCRIPTION="File::ShareDir with PAR support"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="
	dev-perl/File-ShareDir
	dev-perl/Params-Util
	>=dev-perl/Class-Inspector-1.12
	virtual/perl-File-Spec
"
