# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Parse and examine a Perl distribution MANIFEST file"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Params-Util
	virtual/perl-File-Spec"
DEPEND="test? ( ${RDEPEND}
	virtual/perl-Test-Simple
	dev-perl/Test-Exception
	dev-perl/Test-Warn )"

SRC_TEST=do
