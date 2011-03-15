# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ROKR
MODULE_VERSION="0.096"
inherit perl-module

DESCRIPTION="A fast and featureful class for UNIX-style path manipulation"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="virtual/perl-Scalar-List-Utils
	dev-perl/Sub-Exporter"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Most
		dev-perl/Test-Lazy
	)"
