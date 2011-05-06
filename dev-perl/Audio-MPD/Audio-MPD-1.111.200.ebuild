# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR="JQUELIN"
MODULE_VERSION=1.111200
inherit perl-module

DESCRIPTION="Audio::MPD is a Perl module for interfacing MPD through perl scripts."

LICENSE="Artistic GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Audio-MPD-Common-1.110.550
	$(comment Audio::MPD::Common::Item)
	$(comment Audio::MPD::Common::Output since v1.110.550 )
	$(comment Audio::MPD::Common::Stats)
	$(comment Audio::MPD::Common::Status)
	virtual/perl-DB_File
	virtual/perl-Encode
	dev-perl/Getopt-Euclid
	virtual/perl-IO $(comment IO::Socket)
	dev-perl/Moose
	$(comment Moose::Util::TypeConstraints in Moose v0.05)
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-SemiAffordanceAccessor
	dev-perl/Proc-Daemon
	virtual/perl-Time-HiRes
	>=dev-lang/perl-5.10.0
"
DEPEND="${RDEPEND}
	$(comment configure)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)

	$(comment build)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	>=dev-perl/Test-Corpus-Audio-MPD-1.92.920
	>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
"
SRC_TEST="do"
