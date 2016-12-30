# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=2.041
inherit perl-module

DESCRIPTION="Update your git repository after release"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-lang/perl-5.10.0
	dev-perl/DateTime
	>=dev-perl/Dist-Zilla-4.200.16
	dev-perl/Dist-Zilla-Plugin-Config-Git
	dev-perl/File-chdir
	>=dev-perl/File-HomeDir-0.810.0
	>=dev-perl/Git-Wrapper-0.21.0
	dev-perl/IPC-System-Simple
	dev-perl/Module-Runtime
	dev-perl/Moose
	dev-perl/MooseX-Has-Sugar
	dev-perl/MooseX-Types
	>=dev-perl/MooseX-Types-Path-Tiny-0.10.0
	>=dev-perl/namespace-autoclean-0.90.0
	>=dev-perl/Path-Tiny-0.48.0
	dev-perl/String-Formatter
	dev-perl/Try-Tiny
	dev-perl/Version-Next
	virtual/perl-constant
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	>=virtual/perl-Scalar-List-Utils-1.450.0
	>=virtual/perl-version-0.800.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	>=virtual/perl-version-0.800.0
	virtual/perl-Text-ParseWords
	test? (
		>=dev-perl/CPAN-Meta-Check-0.11.0
		dev-perl/Devel-SimpleTrace
		dev-perl/Dist-Zilla
		dev-perl/Dist-Zilla-Plugin-Config-Git
		dev-perl/File-Copy-Recursive
		dev-perl/File-Which
		dev-perl/File-pushd
		dev-perl/Log-Dispatchouli
		dev-perl/Test-Fatal
		virtual/perl-CPAN-Meta-Requirements
		virtual/perl-Encode
		virtual/perl-Exporter
		>=virtual/perl-File-Path-2.70.0
		virtual/perl-File-Spec
		virtual/perl-IO
		>=virtual/perl-Test-Simple-0.880.0
	)
"
