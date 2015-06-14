# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.120610
inherit perl-module

DESCRIPTION='class to talk to MPD (Music Player Daemon) servers'
RESTRICT=test
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_runtime() {
	# Audio::MPD::Common::Item
	echo dev-perl/Audio-MPD-Common
	# Audio::MPD::Common::Output
	echo dev-perl/Audio-MPD-Common
	# Audio::MPD::Common::Stats
	echo dev-perl/Audio-MPD-Common
	# Audio::MPD::Common::Status
	echo dev-perl/Audio-MPD-Common
	# DB_File
	echo virtual/perl-DB_File
	# Encode
	echo virtual/perl-Encode
	# Getopt::Euclid
	echo dev-perl/Getopt-Euclid
	# IO::Socket::IP
	echo virtual/perl-IO-Socket-IP
	# Moose
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::Has::Sugar
	echo dev-perl/MooseX-Has-Sugar
	# MooseX::SemiAffordanceAccessor
	echo dev-perl/MooseX-SemiAffordanceAccessor
	# Proc::Daemon
	echo dev-perl/Proc-Daemon
	# Time::HiRes
	echo virtual/perl-Time-HiRes
	# perl 5.010 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::Corpus::Audio::MPD 1.113282 ( 1.113.282 )
	echo \>=dev-perl/Test-Corpus-Audio-MPD-1.113.282
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
