# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR="JONALLEN"
MODULE_VERSION=0.42
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
	virtual/perl-Pod-Parser
	dev-perl/File-Type
	dev-perl/Image-Size
"
DEPEND="${RDEPEND}"
