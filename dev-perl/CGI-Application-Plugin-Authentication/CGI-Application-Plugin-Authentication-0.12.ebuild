# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=CEESHEK
inherit perl-module

DESCRIPTION="Authentication framework for CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/CGI-Application-4
	dev-perl/Digest-SHA1
	dev-perl/UNIVERSAL-require
	dev-perl/Test-Warn
	dev-perl/Test-Exception
"
DEPEND="${RDEPEND}"
SRC_TEST=do
