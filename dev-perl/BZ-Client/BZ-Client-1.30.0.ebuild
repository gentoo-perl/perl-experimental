# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=JWIED
MODULE_VERSION=1.03
inherit perl-module

DESCRIPTION="Client for the Bugzilla web services API"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/perl-5.10
	dev-perl/libwww-perl
	dev-perl/URI
	dev-perl/XML-Writer"
DEPEND="${RDEPEND}"

SRC_TEST="do"
