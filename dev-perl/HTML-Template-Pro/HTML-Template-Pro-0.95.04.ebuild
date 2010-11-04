# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit versionator
MY_P=${PN}-$(delete_version_separator 2 )
S=${WORKDIR}/${MY_P}
MODULE_AUTHOR=VIY
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
