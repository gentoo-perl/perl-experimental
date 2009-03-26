# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=YVES
inherit perl-module

DESCRIPTION="Accurately serialize a data structure as Perl code."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-perl/B-Utils-0.05"
DEPEND="test? ( ${RDEPEND} )"

#SRC_TEST=do
