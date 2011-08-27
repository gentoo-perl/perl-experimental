# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DANJOU
MODULE_VERSION=0.10
inherit perl-module perl-declaredeps

DESCRIPTION="Supports app to run as a reverse proxybackend
"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

depend-virtual parent
depend Plack # Plack::Middleware
depend Plack # Plack::Request
depend yaml  # YAML

bdepend-virtual Test-Simple # Test::More

ddep_setup;

SRC_TEST="do"
