# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Extremely light weight SQLite-specific schema migration"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=virtual/perl-File-Path-2.04
	>=virtual/perl-File-Spec-3.27.01
	>=dev-perl/File-Which-1.07
	>=dev-perl/File-pushd-1.00
	>=dev-perl/IPC-Run3-0.042
	>=dev-perl/Params-Util-0.37
	>=dev-perl/Probe-Perl-0.01
	>=dev-perl/DBI-1.58
	>=dev-perl/DBD-SQLite-1.21
	>=dev-perl/ORLite-1.28"
RDEPEND="${DEPEND}"

SRC_TEST=do
