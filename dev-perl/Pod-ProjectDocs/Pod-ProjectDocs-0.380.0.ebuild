# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=LYOKATO
MODULE_VERSION="0.38"
inherit perl-module

DESCRIPTION="generates CPAN like pod pages"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# https://rt.cpan.org/Ticket/Display.html?id=60373
#IUSE="+highlight"
COMMON_DEPEND="
	>=virtual/perl-PodParser-1.32
	dev-perl/Class-Accessor
	dev-perl/Class-Data-Inheritable
	virtual/perl-File-Spec
	>=dev-perl/JSON-2.04
	virtual/perl-MIME-Base64
	dev-perl/Readonly
	dev-perl/Template-Toolkit
	dev-perl/URI
"
#	highlight? (
#		dev-perl/Syntax-Highlight-Universal
#	)
#"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
