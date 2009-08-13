# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Common rules for searching for Perl things"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-File-Spec
	dev-perl/File-Find-Rule
	>=dev-perl/Params-Util-0.38
	virtual/perl-Parse-CPAN-Meta"
DEPEND="${RDEPEND}"

SRC_TEST=do
