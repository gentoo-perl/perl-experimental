# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
MODULE_AUTHOR=UNOBE
inherit perl-module

DESCRIPTION="Perl interface to Facebook Platform API"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PERL_RM_FILES=(
	# Author tests
	t/perlcritic.t
	t/pod-coverage.t
	t/pod.t
	# Requires browser
	t/auth.t
	# Require API key
	t/data.t
	t/events.live.t
	t/fql.t
	t/groups.t
	t/profile.t
	t/xml.t
)
DEPEND="
	virtual/perl-version
	dev-perl/Crypt-SSLeay
	dev-perl/JSON-Any
	dev-perl/libwww-perl
	dev-perl/Readonly
	virtual/perl-Time-HiRes
"
RDEPEND="
	${DEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
