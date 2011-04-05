# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_VERSION=0.04_59
MODULE_AUTHOR=PEPE
inherit perl-module

DESCRIPTION="Extract PCM data from audio files"

SLOT="0"
KEYWORDS=""
comment() { echo ''; }
PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/Exporter.patch"
)
IUSE="test $(comment DISABLED, MAD BROKEN +recommended mad ) sndfile ogg"
COMMON_DEPEND="
	media-sound/sox
	>=dev-perl/IO-CaptureOutput-1.10 $(comment 0.100.0)
	dev-perl/Class-Inspector
	dev-perl/Class-Accessor
	virtual/perl-version
	dev-perl/List-MoreUtils

"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	virtual/perl-IO-Compress
	test? (
		virtual/perl-Test-Simple
	)
	$(comment "DISABLED, Audio::MAD is broken
	mad? (
		dev-perl/Audio-Mad
		recommended? (
			dev-perl/Sys-Mmap-Simple
		)
	)"
	)
	ogg? (
		dev-perl/Ogg-Vorbis-Decoder
	)
	sndfile? (
		dev-perl/Audio-SndFile
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
