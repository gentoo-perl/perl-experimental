# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ARISTOTLE
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION="Override REST methods to Plack apps via POST "
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Plack::Middleware -> Plack
# Plack::Request -> Plack
# Plack::Util::Accessor -> Plack
# File::Find -> perl
# Plack::Test -> Plack
# Test::More -> Test-Simple
RDEPEND="
	dev-perl/Plack
	virtual/perl-parent
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Temp
		virtual/perl-Test-Simple
		dev-perl/URI
	)
"
