# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=JSWARTZ
MODULE_VERSION=0.44
inherit perl-module

DESCRIPTION="Unified cache interface"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

comment() {
	echo "";
}

COMMON_DEPEND="
	$(comment PREREQ_PM -- )
	>=dev-perl/Carp-Assert-0.20
	dev-perl/Data-UUID
	dev-perl/Digest-JHash
	>=virtual/perl-File-Spec-0.80
	dev-perl/Hash-MoreUtils
	dev-perl/JSON
	dev-perl/Digest-JHash
	>=dev-perl/List-MoreUtils-0.13
	>=dev-perl/Log-Any-0.08
	>=dev-perl/Moose-0.66
	virtual/perl-Storable
	$(comment dev-perl/Task-Weaken -- Not needed really. )
	>=dev-perl/Time-Duration-1.06
	>=dev-perl/Time-Duration-Parse-0.03
	>=dev-perl/Try-Tiny-0.05
"

DEPEND="${COMMON_DEPEND}
	$(comment BUILD_REQUIRES -- )
	dev-perl/TimeDate 		 $(comment Date::Parse)
	virtual/perl-Test-Simple $(comment Test::Builder)
	dev-perl/Test-Class
	dev-perl/Test-Deep
	dev-perl/Test-Exception
	virtual/perl-Test-Simple
	dev-perl/Test-Warn
	$(comment CONFIGURE_REQUIRES -- )
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="${COMMON_DEPEND}";

SRC_TEST="do"
