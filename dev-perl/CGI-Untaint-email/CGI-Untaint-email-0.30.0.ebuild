# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="validate an eamil address"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=virtual/perl-Test-Simple-0.180.0
	>=dev-perl/CGI-Untaint-0.70.0
	>=dev-perl/Email-Valid-0.130.0
	>=dev-perl/MailTools-1.400.0"
DEPEND="$RDEPEND"

SRC_TEST=do
