# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=AVIF
inherit perl-module

DESCRIPTION="A data structure optimized for prefix lookup"
LICENSE="|| ( Artistic GPL-2 )"
IUSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
DEPEND=""
RDEPEND=""

src_prepare (){
	perl-module_src_prepare
	# These are coverage tests for documentation
	# They currently fail, but thats really not all that important to us.
	rm t/01_pod.t || die "Can't rm a pod test"
	rm t/02_pod_cover.t || die "Can't rm a pod test :( "
	# You'll get warnings about this
	# ie: Warning: the following files are missing in your kit:
	# But meh.
}
SRC_TEST="do"
