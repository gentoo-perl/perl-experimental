# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION="1.1902"
inherit perl-module perl-declaredeps

DESCRIPTION="Adds CPAN Testers reporting to CPAN.pm"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

bdepend-virtual Archive-Tar 1.54
bdepend File-Copy-Recursive 0.35
bdepend-virtual File-Spec # File-Spec-Functions
bdepend File-pushd 0.32
bdepend IO-CaptureOutput 1.30 # NEW SCHEME
bdepend-virtual Test-Harness
bdepend-virtual Test-Simple 0.62 # Test::More

cdepend-virtual ExtUtils-MakeMaker 6.56

depend-virtual CPAN 1.930.100 # NEW SCHEME
#  depend CPAN-Version -> CPAN 
depend Capture-Tiny
# depend Carp # CORE
# depend Config # CORE
depend Config-Tiny 2.08
depend Devel-Autoflush 0.40
# depend Exporter # CORE
depend-virtual ExtUtils-MakeMaker 6.36
# depend Fcntl # CORE
# depend File-Basename # CORE
# depend File-Find # CORE
depend-virtual File-Spec 3.19
depend-virtual File-Temp 0.16
depend-virtual IO # IO-File
depend-virtual Parse-CPAN-Meta
depend Probe-Perl
depend Tee 0.140
depend Test-Reporter 1.54
# depend constant # CORE
# depend vars # CORE

ddep_setup

SRC_TEST="do"
