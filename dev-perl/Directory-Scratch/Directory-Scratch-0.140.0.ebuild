# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=JROCKWAY
MODULE_VERSION="0.14"
inherit perl-module

DESCRIPTION="Easy-to-use self-cleaning scratch space"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-File-Temp
	dev-perl/File-Slurp
	dev-perl/Path-Class
	virtual/perl-File-Spec"
DEPEND="${RDEPEND}"

SRC_TEST=do
