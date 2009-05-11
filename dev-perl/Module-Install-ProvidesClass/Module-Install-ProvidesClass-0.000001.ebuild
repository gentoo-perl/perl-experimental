# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ASH
inherit perl-module

DESCRIPTION="provides detection in META.yml for 'class' keyword"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Module-Install-0.79
	dev-perl/PPI
	dev-perl/File-Find-Rule
	>=dev-lang/perl-5.8.8
	>=dev-perl/File-Find-Rule-Perl-1.05
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Differences
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
