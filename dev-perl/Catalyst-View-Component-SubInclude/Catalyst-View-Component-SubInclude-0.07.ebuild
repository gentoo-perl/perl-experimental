# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=NILSONSFJ
inherit perl-module

DESCRIPTION="Use subincludes in your Catalyst views"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Catalyst-Runtime
	dev-perl/Catalyst-Plugin-SubRequest
	dev-perl/Moose
	dev-perl/namespace-clean"
DEPEND="${RDEPEND}
	dev-perl/File-Copy-Recursive
	test? ( dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"

SRC_TEST=do
