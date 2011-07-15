# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=VIY
MODULE_VERSION=0.9505
inherit perl-module

DESCRIPTION="Perl/XS module to use HTML Templates from CGI scripts"

SLOT="0"
LICENSE="|| ( Artistic LGPL-2 )"
KEYWORDS="~amd64 ~x86"
IUSE="pcre test"

RDEPEND="
	pcre? ( dev-libs/libpcre )
	virtual/perl-File-Spec
	dev-perl/JSON
"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"

SRC_TEST="do"

src_configure() {
	if use pcre ; then
		myconf="PCRE=1"
	else
		myconf="PCRE=0"
	fi
	perl-module_src_configure
}
