# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION="Pure Perl emulation of GNU tee"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Probe-Perl
	>=dev-perl/IPC-Run3-0.033
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/IO-CaptureOutput
	)"
SRC_TEST="do"
