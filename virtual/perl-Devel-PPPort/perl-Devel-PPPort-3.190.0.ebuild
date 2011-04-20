# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Virtual for Devel-PPPort"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="|| (
	~dev-lang/perl-5.14.0 ~dev-lang/perl-5.14.0_rc1
	~dev-lang/perl-5.12.3 ~dev-lang/perl-5.12.2
	~dev-lang/perl-5.10.1
	~perl-core/Devel-PPPort-${PV}
)"
