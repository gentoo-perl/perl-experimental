# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION="1.2"
inherit perl-module

DESCRIPTION="Setup a CGI enviroment from a HTTP::Request"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Test::More -> Test-Simple
# IO::File -> perl-IO
# HTTP::Response -> HTTP-Message
# URI::Escape -> URI
# HTTP::Request -> HTTP-Message
RDEPEND="
	virtual/perl-Test-Simple
	virtual/perl-IO
	>=dev-perl/HTTP-Message-1.530.0
	dev-perl/URI
	dev-perl/Class-Accessor
	virtual/perl-Carp
"
DEPEND="${RDEPEND}"
PERL_RM_FILES=(
	t/release-pod-coverage.t
	t/release-pod-syntax.t
)
SRC_TEST=do
