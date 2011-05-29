# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RJBS
MODULE_VERSION=2.102010
inherit perl-module

DESCRIPTION="build messages from templates"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Email-MIME-1.900
	>=dev-perl/Email-MessageID-1.40.0
	virtual/perl-Encode
	virtual/perl-File-Spec
	>=dev-perl/JSON-2
	>=dev-perl/Moose-0.65
	dev-perl/String-RewritePrefix
	dev-perl/Test-Deep
	dev-perl/YAML-LibYAML
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
