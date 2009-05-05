# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=NKH
inherit perl-module

DESCRIPTION="Gtk2-TreeView renderer for Data-TreeDumper"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Cairo
	dev-perl/gtk2-perl
	dev-perl/glib-perl
	dev-perl/Data-TreeDumper"

SRC_TEST=no
