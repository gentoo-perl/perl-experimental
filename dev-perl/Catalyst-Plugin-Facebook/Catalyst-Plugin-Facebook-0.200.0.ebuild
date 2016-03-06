# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ANDREMAR
MODULE_VERSION=0.2
inherit perl-module

DESCRIPTION="Catalyst plugin for Facebook Platform API integration"

IUSE="test"

SLOT="0"
KEYWORDS="~amd64 ~x86"
PERL_RM_FILES=(
	t/release-pod-coverage.t
	t/release-pod-syntax.t
)
RDEPEND="
	dev-perl/WWW-Facebook-API
"
DEPEND="
	${DEPEND}
	test? (
		virtual/perl-Scalar-List-Utils
		virtual/perl-Test-Simple
	)
"
