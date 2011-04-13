# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=CFRANKS
MODULE_VERSION="0.08002"
inherit perl-module

DESCRIPTION="Catalyst controller for HTML::FormFu framework"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Catalyst-Runtime-5.710.010
	dev-perl/Catalyst-Component-InstancePerContext
	dev-perl/Config-Any
	>=dev-perl/HTML-FormFu-0.40.10
	>=dev-perl/MRO-Compat-0.10
	dev-perl/Moose
	dev-perl/Regexp-Assemble
	dev-perl/Task-Weaken
	dev-perl/namespace-autoclean
"
RDEPEND="${DEPEND}"
SRC_TEST=do
