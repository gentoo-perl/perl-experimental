# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=INGY
MODULE_VERSION="0.18"
inherit perl-module

DESCRIPTION="See your data in the nude"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
perl_mi_requires() {
	# YAML
	echo dev-perl/YAML
}
DEPEND="$(perl_mi_requires)"
RDEPEND="$(perl_mi_requires)"
