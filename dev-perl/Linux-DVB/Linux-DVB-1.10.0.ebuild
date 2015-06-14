# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=MLEHMANN
MODULE_VERSION=1.01
inherit perl-module

DESCRIPTION="Interface to (some parts of) the Linux DVB API"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
src_prepare() {
	perl-module_src_prepare;
	# http://lists.schmorp.de/pipermail/perl/2015q2/000015.html
	einfo "Stripping INC statment";
	sed -i -r -e 's/^\s\s*INC\s*=.*$//' Makefile.PL
}
