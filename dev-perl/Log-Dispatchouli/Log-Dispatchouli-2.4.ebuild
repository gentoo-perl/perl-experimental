# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
MODULE_VERSION="2.004"
MODULE_AUTHOR=RJBS

inherit perl-module perl-declaredeps

DESCRIPTION="Simple wrapper around Log::Dispatch"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

bdepend Test-Deep
bdepend Test-Fatal
bdepend-virtual Test-Simple 0.96

cdepend-virtual ExtUtils-MakeMaker 6.56

# depend Carp # CORE
depend-virtual File-Spec
depend log-dispatch        # Log::Dispatch
depend Log-Dispatch-Array
# depend Log-Dispatch-File   # in log-dispatch
# depend Log-Dispatch-Screen # in log-dispatch
depend Params-Util
depend-virtual Scalar-List-Utils # Scalar::Util
depend String-Flogger
depend Sub-Exporter
depend Sub-Exporter-GlobExporter 0.2 # 0.002
# depend Sys-Syslog 0.160   # 0.16
depend-virtual Sys-Syslog 0.16 #OLD VERSION
depend Try-Tiny 0.40 # 0.04
# depend overload # CORE

ddep_setup;

SRC_TEST=do
