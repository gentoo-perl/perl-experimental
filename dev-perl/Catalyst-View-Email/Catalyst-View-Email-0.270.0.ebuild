# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=DHOSS
MODULE_VERSION="0.27"
inherit perl-module

DESCRIPTION="Send Email from Catalyst"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
COMMON_DEPEND="
	>=virtual/perl-MIME-Base64-3.08
	>=dev-perl/Authen-SASL-2.13
	>=dev-perl/Catalyst-Runtime-5.700.0
	>=dev-perl/Moose-0.930.0
	>=virtual/perl-parent-0.223
	>=dev-perl/Email-Sender-0.100.110
	>=dev-perl/Email-MIME-1.859
	>=dev-perl/Catalyst-View-TT-0.310.0
	>=dev-perl/Catalyst-View-Mason-0.18
"
RDEPEND="
	${COMMON_DEPEND}
"
DEPEND="
	${COMMON_DEPEND}
"
