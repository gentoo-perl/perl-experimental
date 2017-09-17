# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=1.103
inherit perl-module

DESCRIPTION="Support dispatching Content-Type: application/xhtml+xml when requested."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Catalyst-View-TT
	dev-perl/libwww-perl
	dev-perl/MRO-Compat
	dev-perl/MooseX-Types-Structured
	dev-perl/MooseX-Types
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		dev-perl/Catalyst-Action-RenderView
		dev-perl/Test-WWW-Mechanize-Catalyst
		virtual/perl-Test-Simple
	)
"
