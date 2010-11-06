# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="JONALLEN"
inherit perl-module

DESCRIPTION="Converts Pod to PDF format"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/Getopt-ArgvFile
	dev-perl/PDF-API2
	virtual/perl-Pod-Escapes
	virtual/perl-podlators
	virtual/perl-PodParser
	dev-perl/File-Type
	dev-perl/ImageSize
"
DEPEND="${RDEPEND}"

SRC_TEST="do"
