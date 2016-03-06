# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION="FillInForm for Catalyst"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
RDEPEND="
	dev-perl/MRO-Compat
	dev-perl/HTML-FillInForm
	>=dev-perl/Catalyst-Runtime-5.701.200
"
DEPEND="
	test? (
		dev-perl/Catalyst-Action-RenderView
	)
"
