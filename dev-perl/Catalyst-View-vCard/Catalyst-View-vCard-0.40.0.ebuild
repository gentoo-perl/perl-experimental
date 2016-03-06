# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=BRICAS
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="vCard view for Catalyst"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="dev-perl/Catalyst-Runtime
	dev-perl/Text-vCard"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
