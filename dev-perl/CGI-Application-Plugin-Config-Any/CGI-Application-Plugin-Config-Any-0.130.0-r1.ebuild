# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MAB
MODULE_VERSION="0.13"
inherit perl-module

DESCRIPTION="Add Config::Any Support to CGI::Application"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Config-Any-0.08 $(comment 0.80.0)
	>=dev-perl/CGI-Application-4.100.0
"
DEPEND="
	dev-perl/Module-Build
	${RDEPEND}
"
