# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MIYAGAWA
inherit perl-module

DESCRIPTION="PSGI toolkit and servers"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Devel-StackTrace
	>=dev-perl/Devel-StackTrace-AsHTML-0.09
	>=dev-perl/File-ShareDir-1.00
	dev-perl/Filesys-Notify-Simple
	virtual/perl-Filter
	>=dev-perl/Hash-MultiValue-0.05
	>=dev-perl/HTTP-Body-1.06
	dev-perl/libwww-perl
	virtual/perl-PodParser
	dev-perl/Try-Tiny
	dev-perl/URI
	virtual/perl-parent
	>=dev-perl/Test-TCP-0.11
"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.88
		dev-perl/yaml
		dev-perl/Test-Requires
	)"

SRC_TEST=do
