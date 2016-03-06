# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=HIDE
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION="Handling transaction tokens across forms"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/pod_coverage.t
	t/pod.t
	t/live-test.t	# https://rt.cpan.org/Ticket/Display.html?id=104955
)
# Test::More -> Test-Simple
RDEPEND="
	dev-perl/Catalyst-Action-RenderView
	dev-perl/Catalyst-Plugin-Session
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	>=dev-perl/Catalyst-Runtime-5.800.0
	virtual/perl-Digest
	virtual/perl-Scalar-List-Utils
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.36
	test? (
		virtual/perl-Test-Simple
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-use-ok )
	)
"
