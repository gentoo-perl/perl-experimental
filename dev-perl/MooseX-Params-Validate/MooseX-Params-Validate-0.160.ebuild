# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=DROLSKY
MODULE_VERSION=0.16
inherit perl-module perl-declaredeps

DESCRIPTION="an extension of Params::Validate for using Moose's types"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

cdepend-virtual ExtUtils-MakeMaker 6.52

bdepend Test-Fatal 0.001
bdepend-virtual Test-Simple 0.88 # Test-More

# depend-virtual Carp # CORE
depend Devel-Caller
depend Moose 0.58
depend Params-Validate 0.88
depend-virtual Scalar-List-Utils # Scalar-Util
depend Sub-Exporter
ddep_setup;
SRC_TEST=do
