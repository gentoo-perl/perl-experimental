# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=JSWARTZ
inherit perl-module

DESCRIPTION="Unified cache interface"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Carp-Assert-0.20
	>=dev-perl/List-MoreUtils-0.13
	>=dev-perl/Log-Any-0.06
	>=dev-perl/Moose-0.66
	>=dev-perl/Time-Duration-1.06
	>=dev-perl/Time-Duration-Parse-0.03
	>=virtual/perl-File-Spec-0.80
	dev-perl/Data-UUID
	dev-perl/Digest-JHash
	dev-perl/Hash-MoreUtils
	dev-perl/JSON
	dev-perl/Task-Weaken
	virtual/perl-Digest-MD5
	virtual/perl-Module-Load-Conditional
	virtual/perl-Storable
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Log-Any-Adapter-Dispatch-0.05
	dev-perl/Test-Class
	dev-perl/Test-Deep
	dev-perl/Test-Exception
	dev-perl/Test-Log-Dispatch
	dev-perl/Test-Warn
	dev-perl/TimeDate
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
