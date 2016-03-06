# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=TOKUHIROM
MODULE_VERSION=0.29
inherit perl-module

DESCRIPTION="detect outdated CPAN modules in your environment"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# LWP
RDEPEND="
	>=dev-perl/CPAN-DistnameInfo-0.100.0
	virtual/perl-IO-Zlib
	dev-perl/libwww-perl
	virtual/perl-Module-CoreList
	>=virtual/perl-Module-Metadata-1.0.7
	dev-perl/URI
	>=dev-perl/local-lib-1.6.8
	virtual/perl-version
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.35.0
"
