# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.9978
inherit perl-module

DESCRIPTION="PSGI toolkit and servers"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo '';}
RDEPEND="
	>=dev-perl/libwww-perl-5.814 $(comment LWP 5.814.0)
	>=dev-perl/URI-1.36 $(comment URI 1.360.0)
	virtual/perl-PodParser $(comment Pod::Usage)
	>=dev-perl/File-ShareDir-1.00 $(comment 1.0.0)
	dev-perl/Try-Tiny
	virtual/perl-parent
	>=dev-perl/Devel-StackTrace-1.23 $(comment 1.230.0)
	>=dev-perl/Devel-StackTrace-AsHTML-0.110 $(comment 0.110.0)
	dev-perl/Filesys-Notify-Simple
	>=dev-perl/Hash-MultiValue-0.50.0
	>=dev-perl/HTTP-Body-1.60.0
	>=dev-perl/Test-TCP-0.11 $(comment 0.110.0)
"
DEPEND="${RDEPEND}
	$(comment Build Requires)
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
	test? (
		$(comment Test Reuires)
		dev-perl/Test-Requires
	)"

SRC_TEST=do
