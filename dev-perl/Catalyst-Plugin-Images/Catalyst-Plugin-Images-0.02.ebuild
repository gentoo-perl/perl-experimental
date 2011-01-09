# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Generate image tags for static files."

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Catalyst-Runtime-5.700
	dev-perl/ImageSize
	dev-perl/Path-Class
	dev-perl/HTML-Parser
	dev-perl/MRO-Compat
"

#src_compile() {
#	export PERL_EXTUTILS_AUTOINSTALL="--skipdeps"
#	perl-module_src_compile
#}
