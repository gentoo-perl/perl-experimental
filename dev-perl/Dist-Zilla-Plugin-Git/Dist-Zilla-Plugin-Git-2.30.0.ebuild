# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=CJM
MODULE_VERSION=2.030
inherit perl-module

DESCRIPTION='update your git repository after release'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Dist::Zilla::Role::GitConfig -> Dist-Zilla-Plugin-Config-Git
# File::Spec::Functions        -> File-Spec
# List::Util				   -> Scalar-List-Utils
# Moose::Role				   -> Moose
# Moose::Util::TypeConstraints -> Moose
# MooseX::Types::Moose         -> MooseX-Types
# 
# test: File::Copy -> perl
# 		Dist::Zilla::File::InMemory -> Dist-Zilla
#       Dist::Zilla::Role::Releaser -> Dist-Zilla
#		Dist::Zilla::Tester			-> Dist-Zilla
#       IO::Handle                  -> IO
#       IPC::Open3					-> perl
#       Test::DZil					-> Dist-Zilla
RDEPEND="
	virtual/perl-File-Spec
	dev-perl/DateTime
	>=dev-perl/Dist-Zilla-4.200.16
	dev-perl/Dist-Zilla-Plugin-Config-Git
	virtual/perl-File-Temp
	dev-perl/File-chdir
	>=dev-perl/Git-Wrapper-0.21.0
	dev-perl/IPC-System-Simple
	dev-perl/List-AllUtils
	virtual/perl-Scalar-List-Utils
	dev-perl/Module-Runtime
	dev-perl/Moose
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-Types
	>=dev-perl/MooseX-Types-Path-Tiny-0.10.0
	>=dev-perl/Path-Tiny-0.48.0
	dev-perl/String-Formatter
	dev-perl/Try-Tiny
	dev-perl/Version-Next
	virtual/perl-constant
	>=dev-perl/namespace-autoclean-0.90.0
	>=dev-lang/perl-5.10.0
	>=virtual/perl-version-0.800.0
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.360.100
	>=virtual/perl-version-0.800.0
	test? (
		>=dev-perl/CPAN-Meta-Check-0.7.0
		virtual/perl-CPAN-Meta-Requirements
		dev-perl/Devel-SimpleTrace
		dev-perl/Dist-Zilla
		dev-perl/Dist-Zilla-Plugin-Config-Git
		virtual/perl-Encode
		virtual/perl-Exporter
		dev-perl/File-Copy-Recursive
		>=virtual/perl-File-Path-2.70.0
		virtual/perl-File-Spec
		dev-perl/File-Which
		dev-perl/File-pushd
		virtual/perl-IO
		dev-perl/List-MoreUtils
		dev-perl/Log-Dispatchouli
		>=dev-perl/Test-Fatal-0.6.0
		>=virtual/perl-Test-Simple-0.880.0
	)
"
