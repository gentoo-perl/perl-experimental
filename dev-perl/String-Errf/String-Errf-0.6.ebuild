# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.006
inherit perl-module perl-declaredeps

DESCRIPTION="a simple sprintf-like dialect"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

bdepend TimeDate # Date::Format
bdepend JSON
bdepend-virtual Test-Simple 0.96 # Test-More
bdepend autodie

cdepend-virtual ExtUtils-MakeMaker 6.56;

# depend Carp # CORE
depend Params-Util
depend-virtual Scalar-List-Utils # Scalar-Util
depend String-Formatter 0.102081 # OLD SCHEME
depend Sub-Exporter
depend-virtual Time-Piece

ddep_setup
SRC_TEST="do"
