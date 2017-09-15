# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=NEKOKAK
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="URI::Fetch extension with local cache"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
# r:Cache::FileCache -> Cache-Cache
RDEPEND="dev-perl/URI-Fetch
	dev-perl/Cache-Cache"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
