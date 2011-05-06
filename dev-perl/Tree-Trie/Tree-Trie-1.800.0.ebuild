# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=AVIF
MODULE_VERSION=1.8
inherit perl-module

DESCRIPTION="A data structure optimized for prefix lookup"

# LICENSE either "as perl" (README) or "Artistic" (Trie.pm)
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
DEPEND="test? (
	>=dev-perl/Test-Pod-1.26 $(comment 1.260.0)
	>=dev-perl/Test-Pod-Coverage-1.08  $(comment 1.80.0)
	>=dev-perl/Pod-Coverage-0.18 $(comment 0.180.0)
)"
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
