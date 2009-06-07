# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MRAMBERG
inherit perl-module eutils

DESCRIPTION="FormValidator for Catalyst"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Data-FormValidator
	>=dev-perl/Catalyst-Runtime-2.99
"
RDEPEND="${DEPEND}"
SRC_TEST="do"

src_prepare(){
	ewarn "THIS PACKAGE IS DEPRECIATED AND UNMAINTAINED UPSTREAM"
	ewarn "Please consider removing this and using something like the FormFu"
	ewarn "Module instead. See:"
	ewarn "http://search.cpan.org/~mramberg/Catalyst-Plugin-FormValidator-0.03/FormValidator.pm"
	ewarn "For more detials."
	ebeep 5
	epause 5
}

pkg_postinst(){
	ewarn "THIS PACKAGE IS DEPRECIATED AND UNMAINTAINED UPSTREAM"
	ewarn "Please consider removing this and using something like the FormFu"
	ewarn "Module instead. See:"
	ewarn "http://search.cpan.org/~mramberg/Catalyst-Plugin-FormValidator-0.03/FormValidator.pm"
	ewarn "For more detials."
	ebeep 5
	epause 5
}
