# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=WONKO
MODULE_VERSION=1.11
inherit perl-module

DESCRIPTION="D::FV constraints for dates and times"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/Data-FormValidator-3.61
	>=dev-perl/DateTime-0.230.0
	>=dev-perl/DateTime-Format-Strptime-1.0.0
	virtual/perl-Exporter"
DEPEND="${RDEPEND}
	dev-perl/DateTime-Format-Builder
	dev-perl/Module-Build"

SRC_TEST=do
