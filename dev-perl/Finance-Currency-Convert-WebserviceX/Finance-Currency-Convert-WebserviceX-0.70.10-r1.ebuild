# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CLACO
MODULE_VERSION="0.07001"
inherit perl-module

DESCRIPTION="Lightweight currency conversion using WebserviceX.NET."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

# LWP -> libwww-perl
# HTTP::Response -> HTTP-Message
RDEPEND="
	dev-perl/libwww-perl
	dev-perl/HTTP-Message
	virtual/perl-Memoize
"
DEPEND="${RDEPEND}"
PERL_RM_FILES=(
	t/manifest.t
	t/meta.t
	t/pod_coverage.t
	t/pod_spelling.t
	t/pod_syntax.t
	t/strict.t
	t/style_no_tabs.t
	t/warnings.t
)
SRC_TEST="do"
