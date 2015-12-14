# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=CHANSEN
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="XS implementation of URL::Encode"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	virtual/perl-Carp
	virtual/perl-Exporter
	>=dev-perl/URL-Encode-0.30.0
	virtual/perl-XSLoader
"

DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	>=virtual/perl-Test-Simple-0.880.0
"
