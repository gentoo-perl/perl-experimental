# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR="JQUELIN"
MODULE_VERSION=1.112670
inherit perl-module

DESCRIPTION="Audio::MPD is a Perl module for interfacing MPD through perl scripts."

LICENSE="Artistic GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_mb_build() {
	#File::Find

	#File::Temp
	echo virtual/perl-File-Temp
	#Module::Build 0.3601
	echo \>=virtual/perl-Module-Build-0.36.01
	#Test::Corpus::Audio::MPD 1.092920
	echo \>=dev-perl/Test-Corpus-Audio-MPD-1.92.920
	#Test::More 0.88
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_mb_configure() {
	#Module::Build 0.3601
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_mb_requires() {
	#Audio::MPD::Common::Item
	echo dev-perl/Audio-MPD-Common
	#Audio::MPD::Common::Output
	echo \>=dev-perl/Audio-MPD-Common-1.110.550
	#Audio::MPD::Common::Stats
	#Audio::MPD::Common::Status
	echo dev-perl/Audio-MPD-Common
	#DB_File
	echo virtual/perl-DB_File
	#Encode
	echo virtual/perl-Encode
	#Getopt::Euclid
	echo dev-perl/Getopt-Euclid
	#IO::Socket
	echo virtual/perl-IO
	#Moose
	echo dev-perl/Moose
	#Moose::Util::TypeContraints
	echo \>=dev-perl/Moose-0.50.0
	#MooseX::Has::Sugar
	echo dev-perl/MooseX-Has-Sugar
	#MooseX::SemiAffordanceAccessor
	echo dev-perl/MooseX-SemiAffordanceAccessor
	#Proc::Daemon
	echo dev-perl/Proc-Daemon
	#Time::HiRes
	echo virtual/perl-Time-HiRes
	#perl 5.010
	echo \>=dev-lang/perl-5.10.0
	#strict
	#warnings
}

RDEPEND="$(perl_mb_requires)"
DEPEND="
	$(perl_mb_configure)
	$(perl_mb_build)
	$(perl_mb_requires)
"
SRC_TEST="broken"
