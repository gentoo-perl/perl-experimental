# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=DROLSKY
inherit perl-module

DESCRIPTION="Watch for changes to files, cross-platform style."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Class-MOP
	virtual/perl-Module-Pluggable
	dev-perl/Moose
	>=dev-perl/MooseX-Params-Validate-0.08
	dev-perl/MooseX-SemiAffordanceAccessor
	virtual/perl-File-Spec
	virtual/perl-Time-HiRes
	"
DEPEND="
	${RDEPEND}
	>=virtual/perl-Module-Build-0.35
	virtual/perl-File-Path
	virtual/perl-File-Temp
	test? (
		virtual/perl-Test-Simple
	)
"
SRC_TEST=do
