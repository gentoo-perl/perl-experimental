# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DAGOLDEN
inherit perl-module

DESCRIPTION="Generate Pod from inline wiki style text"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Getopt-Lucid-0.14
	>=dev-perl/IO-String-1.06
	>=dev-perl/Parse-RecDescent-1.94
	>=virtual/perl-Scalar-List-Utils-1.02
	>=virtual/perl-Text-Balanced-1.95
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.45
	>=dev-perl/IPC-Run3-0.033
	>=dev-perl/Probe-Perl-0.01
	>=dev-perl/File-pushd-0.30
	>=virtual/perl-File-Spec-3
	>=virtual/perl-File-Temp-0.14
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
