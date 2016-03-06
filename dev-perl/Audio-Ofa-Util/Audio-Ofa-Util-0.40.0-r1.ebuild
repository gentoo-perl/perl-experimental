# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_VERSION=0.04
MODULE_AUTHOR=PEPE
inherit perl-module

DESCRIPTION="Retrieve audio fingerprints and metadata for unknown audio files"

LICENSE="|| ( GPL-2 GPL-3 )" # GPL-2+
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	dev-perl/Audio-Ofa
	>=dev-perl/Audio-Extract-PCM-0.20.0
	dev-perl/Class-Accessor
	dev-perl/XML-Simple
	dev-perl/WebService-MusicBrainz
	dev-perl/XML-LibXML
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
#SRC_TEST="do"
