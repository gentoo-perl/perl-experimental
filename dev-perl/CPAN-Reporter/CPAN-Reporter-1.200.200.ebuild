# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=1.2002
inherit perl-module perl-declaredeps

DESCRIPTION="Adds CPAN Testers reporting to CPAN.pm"

SLOT="0"
KEYWORDS=""
IUSE=""

bdepend-virtual Archive-Tar 1.54 # 1.540.0
bdepend File-Copy-Recursive 0.35 # 0.350.0
bdepend-virtual File-Spec # File-Spec-Functions
bdepend File-pushd 0.32 # 0.320.0
bdepend IO-CaptureOutput 1.30.0
bdepend-virtual Test-Harness
bdepend-virtual Test-Simple 0.62 # Test::More 0.620.0

cdepend-virtual ExtUtils-MakeMaker 6.56 # 6.560.0

depend-virtual CPAN 1.930.100
#  depend CPAN-Version -> CPAN 
depend Capture-Tiny
# depend Carp # CORE
# depend Config # CORE
depend Config-Tiny 2.08 # 2.80.0
depend Devel-Autoflush 0.40 # 0.400.0
# depend Exporter # CORE
depend-virtual ExtUtils-MakeMaker 6.36 # 6.360.0
# depend Fcntl # CORE
# depend File-Basename # CORE
# depend File-Find # CORE
# depend File-Glob # CORE
depend-virtual File-Spec 3.19 # 3.190.0
depend-virtual File-Temp 0.160.0
depend-virtual IO # IO-File
depend-virtual IPC-Cmd 0.460 # 0.460.0
depend-virtual Parse-CPAN-Meta
depend Probe-Perl
depend Test-Reporter 1.54 # 1.540.0
# depend constant # CORE
# depend vars # CORE

ddep_setup

SRC_TEST="broken"
