# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=NKH
MODULE_VERSION=0.02
inherit perl-module virtualx

DESCRIPTION="Gtk2-TreeView renderer for Data-TreeDumper"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Cairo
	dev-perl/Gtk2
	dev-perl/glib-perl
	>=dev-perl/Data-TreeDumper-0.330.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
src_test() {
	VIRTUALX_COMMAND="perl-module_src_test" virtualmake
}
