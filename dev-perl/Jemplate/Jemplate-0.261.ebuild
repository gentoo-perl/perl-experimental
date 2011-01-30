# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
MODULE_VERSION=0.261
MODULE_AUTHOR=RKRIMEN
inherit perl-module

DESCRIPTION="JavaScript Templating with Template Toolkit"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-perl/Template-Toolkit-2.19
	>=dev-perl/File-Find-Rule-0.30"
DEPEND="${RDEPEND}"

SRC_TEST=do
