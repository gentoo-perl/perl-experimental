# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=RCLAMP
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION="Allow calling of class methods on arbitrary classes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Template-Toolkit
		virtual/perl-Test-Simple"
DEPEND="${DEPEND}"

SRC_TEST=do
