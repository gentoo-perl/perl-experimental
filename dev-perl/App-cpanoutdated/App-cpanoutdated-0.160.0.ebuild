# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=TOKUHIROM
MODULE_VERSION=0.16

inherit perl-module perl-declaredeps

DESCRIPTION="detect outdated CPAN modules in your environment"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

depend libwww-perl; # LWP
depend-virtual IO-Zlib;
depend-virtual version;
depend local-lib 1.6.8;
depend-virtual ExtUtils-MakeMaker 6.56;
depend CPAN-DistnameInfo 0.100;

ddep_setup;

SRC_TEST="do"
