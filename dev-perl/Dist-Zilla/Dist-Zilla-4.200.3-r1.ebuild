# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION="4.200003"
inherit perl-module perl-declaredeps

DESCRIPTION="distribution builder; installer not included!"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

cdepend-virtual ExtUtils-MakeMaker 6.56
cdepend File-ShareDir-Install 0.03

bdepend Test-Fatal
bdepend-virtual Test-Simple 0.96 # Test::More

# App::Cmd::Setup 0.309
# App::Cmd::Tester 0.306
depend App-Cmd 0.309.0 # ^^
depend-virtual Archive-Tar
# CPAN::Meta::Converter 2.101550
# CPAN::Meta::Prereqs 2.101390
# CPAN::Meta::Validator 2.101550
depend-virtual CPAN-Meta 2.101.550 # ^^
depend CPAN-Uploader 0.101.550
# depend Carp # CORE
# depend Config # CORE

# Config::INI::Reader
depend Config-INI # ^^
# Config::MVP::Assembler
# Config::MVP::Assembler::WithBundles
# Config::MVP::Reader 2.101540
# Config::MVP::Reader::Findable::ByExtension
# Config::MVP::Reader::Finder
depend Config-MVP 2.101.540 # ^^
depend Config-MVP-Reader-INI 2
# depend Data-Dumper # CORE
depend Data-Section 0.4.0
depend DateTime 0.44
depend-virtual ExtUtils-MakeMaker
depend-virtual ExtUtils-Manifest 1.54
depend File-Copy-Recursive
depend File-Find-Rule
depend File-HomeDir
depend-virtual File-Path
depend File-ShareDir
depend File-ShareDir-Install 0.03
depend-virtual File-Spec
depend-virtual File-Temp
depend File-pushd
depend Hash-Merge-Simple
depend JSON 2
depend List-MoreUtils
depend-virtual Scalar-List-Utils # List::Util
depend Log-Dispatchouli 1.102.220
depend Moose 0.92
depend Moose-Autobox 0.10
# Moose::Role -> depend Moose 
# Moose::Util::TypeConstraints -> depend Moose
depend MooseX-LazyRequire
depend MooseX-Role-Parameterized
depend MooseX-SetOnce
depend MooseX-Types
# MooseX::Types::Moose -> depend MooseX-Types
depend MooseX-Types-Path-Class
depend MooseX-Types-Perl
depend PPI
depend Params-Util
depend Path-Class
depend Perl-PrereqScanner 0.100.830
depend Perl-Version
depend Pod-Eventual 0.091480
depend-virtual Scalar-List-Utils # Scalar::Util
depend Software-License 0.101.370
# Software::LicenseUtils -> depend Software-License
depend String-Formatter 0.100.680
depend String-RewritePrefix 0.005
depend Sub-Exporter
# Sub::Exporter::Util -> depend Sub::Exporter
depend TermReadKey # Term::ReadKey
# depend Term-ReadLine # CORE
depend-virtual Term-UI
depend Test-Deep
depend text-template # text-template
depend Try-Tiny
depend-virtual Version-Requirements 0.100.630
depend YAML-Tiny
depend autobox 2.530.0
depend autodie
depend namespace-autoclean
depend-virtual parent
depend-virtual version

ddep_setup
SRC_TEST="do"
