# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=2.000
inherit perl-module

DESCRIPTION='class to talk to MPD (Music Player Daemon) servers'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RESTRICT="parallel-test"
PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/mpd_019.patch"
)
RDEPEND="
	dev-perl/Audio-MPD-Common
	virtual/perl-DB_File
	virtual/perl-Encode
	dev-perl/Getopt-Euclid
	virtual/perl-IO-Socket-IP
	dev-perl/Moose
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-SemiAffordanceAccessor
	dev-perl/Proc-Daemon
	virtual/perl-Time-HiRes
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.36.01
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		dev-perl/List-AllUtils
		>=dev-perl/Test-Corpus-Audio-MPD-1.113.282
		>=virtual/perl-Test-Simple-0.880.0
		>=media-sound/mpd-0.19.0
	)
"
src_test() {
	if has_version "media-sound/mpd[tcpd]"; then
		ewarn "media-sound/mpd built with USE=tcpd can be expected to cause tests" \
			  "to fail due to the client not being able to access the test server."
		ewarn "Tests are subsequently skipped."
		ewarn "See https://rt.cpan.org/Ticket/Display.html?id=73035#txn-1510053"
		return;
	fi
	perl-module_src_test
}
