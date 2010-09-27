# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MRAMBERG
inherit perl-module

DESCRIPTION="Unmaintained Data::FormValidator plugin for Catalyst"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-perl/Catalyst-Runtime
	dev-perl/Data-FormValidator"
DEPEND="${RDEPEND}"

pkg_postinst() {
	perl-module_pkg_postinst

	ewarn "Catalyst-Plugin-FormValidator is deprecated! Use a more modern replacement,"
	ewarn "such as Catalyst-Controller-HTML-FormFu or Catalyst-Controller-FormBuilder."
}
