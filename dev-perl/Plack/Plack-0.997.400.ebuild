# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.9974
inherit perl-module

DESCRIPTION="PSGI toolkit and servers"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Devel-StackTrace-AsHTML-0.11
	>=dev-perl/File-ShareDir-1.00
	>=dev-perl/HTTP-Body-1.60.0
	>=dev-perl/Hash-MultiValue-0.50.0
	>=dev-perl/Test-TCP-0.11
	>=dev-perl/URI-1.36
	>=dev-perl/libwww-perl-5.814
	>=dev-perl/Devel-StackTrace-1.23
	dev-perl/Filesys-Notify-Simple
	dev-perl/Try-Tiny
	virtual/perl-Filter
	virtual/perl-PodParser
	virtual/perl-parent
"
DEPEND="${RDEPEND}
	>=virtual/perl-Test-Simple-0.88
	test? (
		dev-perl/Test-Requires
	)"

SRC_TEST=do
