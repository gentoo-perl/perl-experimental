# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Extremely light weight SQLite-specific schema migration"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/perl
	>=dev-perl/File-pushd-1.00
	>=dev-perl/IPC-Run3-0.042
	>=dev-perl/Params-Util-0.37
	>=dev-perl/Probe-Perl-0.01
	>=dev-perl/DBI-1.58
	>=dev-perl/DBD-SQLite-1.14
	>=dev-perl/ORLite-1.20"
RDEPEND="${DEPEND}"

SRC_TEST=do
