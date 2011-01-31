# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MODULE_AUTHOR=APEIRON
MODULE_VERSION=1.008001
inherit perl-module perl-declaredeps

DESCRIPTION="create and use a local lib/ for perl modules with PERL5LIB"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/0001_No_CPAN.patch"
)
cdepend-virtual File-Spec; # File::Spec, Cwd;
cdepend-virtual ExtUtils-MakeMaker 6.42;

depend-virtual ExtUtils-MakeMaker 6.31;
depend-virtual ExtUtils-Install 1.43;
depend-virtual Module-Build 0.36;
depend-virtual CPAN 1.820

ddep_setup;

SRC_TEST="do"
