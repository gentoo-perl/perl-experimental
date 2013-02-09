# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION=v2.10.0
inherit perl-module

DESCRIPTION='Fix as much of Perl 5 as possible in one pragma'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=virtual/perl-Module-Build-0.36.00
}
perl_meta_build() {
	# ExtUtils::CBuilder 0.26 ( 0.260.0 )
	echo \>=virtual/perl-ExtUtils-CBuilder-0.26.00
	# IPC::Open3
	echo dev-lang/perl
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::Output 0.16 ( 0.160.0 )
	echo \>=dev-perl/Test-Output-0.16
	# Test::Warn 0.11 ( 0.110.0 )
	echo \>=dev-perl/Test-Warn-0.110.0
}
perl_meta_runtime() {
	# CLASS 1.00 ( 1.0.0 )
	echo \>=dev-perl/CLASS-1.0.0
	# Capture::Tiny 0.06 ( 0.60.0 )
	echo \>=dev-perl/Capture-Tiny-0.60.0
	# Carp::Fix::1_25 1.000000 ( 1.0.0 )
	echo \>=dev-perl/Carp-Fix-1_25-1.0.0
	# Child 0.009 ( 0.9.0 )
	echo \>=dev-perl/Child-0.9.0
	# DateTime 0.47 ( 0.470.0 )
	echo \>=dev-perl/DateTime-0.47
	# DateTime::Format::Epoch 0.11 ( 0.110.0 )
	echo \>=dev-perl/DateTime-Format-Epoch-0.110.0
	# DateTime::TimeZone::Tzfile 0.002 ( 0.2.0 )
	echo \>=dev-perl/DateTime-TimeZone-Tzfile-0.2.0
	# Devel::Declare::MethodInstaller::Simple 0.006007 ( 0.6.7 )
	echo \>=dev-perl/Devel-Declare-0.6.7
	# Digest::MD5 2.36 ( 2.360.0 )
	echo \>=virtual/perl-Digest-MD5-2.36
	# Digest::SHA 5.45 ( 5.450.0 )
	echo \>=virtual/perl-Digest-SHA-5.45
	# File::chdir 0.1002 ( 0.100.200 )
	echo \>=dev-perl/File-chdir-0.100.200
	# Hash::Merge::Simple 0.04 ( 0.40.0 )
	echo \>=dev-perl/Hash-Merge-Simple-0.40.0
	# IPC::System::Simple 1.18 ( 1.180.0 )
	echo \>=dev-perl/IPC-System-Simple-1.18
	# JSON 2.17 ( 2.170.0 )
	echo \>=dev-perl/JSON-2.170.0
	# List::MoreUtils 0.22 ( 0.220.0 )
	echo \>=dev-perl/List-MoreUtils-0.220.0
	# Modern::Perl 1.03 ( 1.30.0 )
	echo \>=dev-perl/Modern-Perl-1.30.0
	# Module::Load 0.16 ( 0.160.0 )
	echo \>=virtual/perl-Module-Load-0.160.0
	# Object::ID v0.1.0 ( 0.1.0 )
	echo \>=dev-perl/Object-ID-0.1.0
	# Perl6::Caller 0.100 ( 0.100.0 )
	echo \>=dev-perl/Perl6-Caller-0.100.0
	# Taint::Util 0.06 ( 0.60.0 )
	echo \>=dev-perl/Taint-Util-0.60.0
	# Text::Wrap 2009.0305 ( 2009.30.500 )
	echo \>=virtual/perl-Text-Tabs+Wrap-2009.30.500
	# Try::Tiny 0.02 ( 0.20.0 )
	echo \>=dev-perl/Try-Tiny-0.20.0
	# Want 0.18 ( 0.180.0 )
	echo \>=dev-perl/Want-0.180.0
	# YAML::Any 0.70 ( 0.700.0 )
	echo \>=dev-perl/yaml-0.700.0
	# autobox 2.70 ( 2.700.0 )
	echo \>=dev-perl/autobox-2.700.0
	# autobox::Core 1.0 ( 1.0.0 )
	echo \>=dev-perl/autobox-Core-1.0.0
	# autobox::List::Util 20090629 ( 20090629.0.0 )
	echo \>=dev-perl/autobox-List-Util-20090629.0.0
	# autobox::dump 20090426 ( 20090426.0.0 )
	echo \>=dev-perl/autobox-dump-20090426.0.0
	# autodie 2.12 ( 2.120.0 )
	echo \>=dev-perl/autodie-2.120.0
	# autovivification 0.06 ( 0.60.0 )
	echo \>=dev-perl/autovivification-0.60.0
	# indirect 0.24 ( 0.240.0 )
	echo \>=dev-perl/indirect-0.240.0
	# parent 0.221 ( 0.221.0 )
	echo \>=virtual/perl-parent-0.221
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# true::VERSION 0.16 ( 0.160.0 )
	echo \>=dev-perl/true-0.160.0
	# utf8::all 0.002 ( 0.2.0 )
	echo \>=dev-perl/utf8-all-0.2.0
	# version 0.77 ( 0.770.0 )
	echo \>=virtual/perl-version-0.77
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
