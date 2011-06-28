# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=NEELY
MODULE_VERSION="0.59"
inherit perl-module perl-declaredeps

DESCRIPTION="Modules that serialize data structures"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# NOTE: Don't add the recommended list here, its a waste of time.

bdepend-virtual IO # IO::File
bdepend-virtual Test-Simple # Test::More
bdepend-virtual File-Spec
bdepend-virtual Module-Build

# depend Exporter # CORE
depend-virtual AutoLoader
depend-virtual IO # IO::File
depend-virtual Digest-SHA
# depend Data-Dumper 2.08 # CORE?

ddep_setup
SRC_TEST="do"
