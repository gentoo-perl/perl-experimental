# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=HIDE
inherit perl-module

DESCRIPTION="Handling transaction token across forms"

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	virtual/perl-digest-base
	virtual/perl-Scalar-List-Utils
	dev-perl/MRO-Compat
	>=dev-perl/Catalyst-Runtime-5.700
	dev-perl/Catalyst-Plugin-Session
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	dev-perl/Catalyst-Action-RenderView
"
DEPEND="
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-use-ok
	)
"
SRC_TEST="do"
