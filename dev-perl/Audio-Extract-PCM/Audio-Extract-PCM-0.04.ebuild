# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=PEPE
inherit perl-module

DESCRIPTION="Extract PCM data from audio files"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	media-sound/sox
	>=dev-perl/IO-CaptureOutput-1.10
	virtual/perl-version
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	virtual/perl-IO-Compress
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
