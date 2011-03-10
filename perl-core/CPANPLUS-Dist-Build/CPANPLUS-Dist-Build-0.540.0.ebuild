# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=BINGOS
MODULE_VERSION="0.54"
inherit perl-module

DESCRIPTION="CPANPLUS plugin to install packages that use Build.PL"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=virtual/perl-Test-Harness-3.16
	>=virtual/perl-CPANPLUS-0.840.0
	virtual/perl-Locale-Maketext-Simple
	>=virtual/perl-Params-Check-0.26
	>=virtual/perl-IPC-Cmd-0.42
	>=virtual/perl-Module-Load-0.16
	>=virtual/perl-Module-Load-Conditional-0.300
	>=virtual/perl-Module-Pluggable-3.8
	>=virtual/perl-Module-Build-0.32
	virtual/perl-File-Spec
	>=virtual/perl-ExtUtils-Install-1.42
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.47
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
