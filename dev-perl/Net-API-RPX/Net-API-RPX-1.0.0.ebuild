# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.000000
inherit perl-module

DESCRIPTION='Perl interface to Janrain'\''s RPX service'
LICENSE=" BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# LWP::UserAgent -> libwww-perl
# Throwable::Error -> Throwable
# unmocked -> mocked
RDEPEND="
	dev-perl/JSON-MaybeXS
	dev-perl/libwww-perl
	dev-perl/Moose
	dev-perl/Throwable
	dev-perl/Throwable-X
	dev-perl/URI
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Data-Dump
		virtual/perl-File-Spec
		dev-perl/Test-Exception
		>=virtual/perl-Test-Simple-0.890.0
		dev-perl/mocked
	)
"
