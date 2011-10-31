# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ADAMK
MODULE_VERSION=1.10
inherit perl-module

DESCRIPTION="Common rules for searching for Perl things"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PATCHES=(
	"${FILESDIR}/${PV}/0001-Fix-the-test-for-ExtUtils-MakeMaker-and-also-being-i.patch"
)
RDEPEND="virtual/perl-File-Spec
	dev-perl/File-Find-Rule
	>=dev-perl/Params-Util-0.38
	virtual/perl-Parse-CPAN-Meta"
DEPEND="${RDEPEND}"

SRC_TEST=do
