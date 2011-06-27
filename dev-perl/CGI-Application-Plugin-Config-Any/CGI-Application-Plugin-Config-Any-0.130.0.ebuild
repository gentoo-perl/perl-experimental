# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MAB
MODULE_VERSION="0.13"
inherit perl-module

DESCRIPTION="Add Config::Any Support to CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Config-Any-0.08 $(comment 0.80.0)
	>=dev-perl/CGI-Application-4.100.0
"
DEPEND="
	virtual/perl-Module-Build
	${RDEPEND}
"
SRC_TEST="do"
