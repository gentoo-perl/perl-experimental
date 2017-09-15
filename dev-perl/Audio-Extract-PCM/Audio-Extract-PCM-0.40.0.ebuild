# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_VERSION=0.04
MODULE_AUTHOR=PEPE
inherit perl-module

DESCRIPTION="Extract PCM data from audio files"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	media-sound/sox
	>=dev-perl/IO-CaptureOutput-1.100.0
	virtual/perl-version
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Module-Build
	virtual/perl-IO-Compress
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do parallel"
