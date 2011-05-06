# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=AVIF
MODULE_VERSION="1.7"
inherit perl-module

DESCRIPTION="A data structure optimized for prefix lookup"

# LICENSE either "as perl" (README) or "Artistic" (Trie.pm)
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="test? ( dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"
RDEPEND=""

#src_prepare (){
#	perl-module_src_prepare
#	# These are coverage tests for documentation
#	# They currently fail, but thats really not all that important to us.
#	rm t/01_pod.t || die "Can't rm a pod test"
#	rm t/02_pod_cover.t || die "Can't rm a pod test :( "
#	# You'll get warnings about this
#	# ie: Warning: the following files are missing in your kit:
#	# But meh.
#}
SRC_TEST="do"
