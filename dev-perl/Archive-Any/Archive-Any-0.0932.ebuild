# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=CMOORE
inherit perl-module

DESCRIPTION="Single interface to deal with file archives"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="virtual/perl-Archive-Tar
	dev-perl/Archive-Zip
	dev-perl/Module-Find
	dev-perl/MIME-Types
	dev-perl/File-MMagic
	virtual/perl-File-Spec"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	test? ( dev-perl/Test-Warn
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"

SRC_TEST=do
