# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.001001
inherit perl-module

DESCRIPTION="Wrap a WWW::Mechanize instance in an HTTP::Tiny compatible interface."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/HTTP-Message
	>=virtual/perl-HTTP-Tiny-0.22.0
	dev-perl/WWW-Mechanize
"

DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-File-Spec
	>=virtual/perl-Test-Simple-0.89.0
"
