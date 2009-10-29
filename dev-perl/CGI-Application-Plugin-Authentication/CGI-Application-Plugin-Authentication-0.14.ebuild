# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=CEESHEK
inherit perl-module

DESCRIPTION="Authentication framework for CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/CGI-Application-4
	virtual/perl-Scalar-List-Utils
	virtual/perl-Class-ISA
	dev-perl/UNIVERSAL-require
	virtual/perl-CGI
	virtual/perl-MIME-Base64
	dev-perl/Digest-SHA1
"
DEPEND="
	test? (
		dev-perl/Test-Warn
		virtual/perl-Test-Simple
		dev-perl/Task-Weaken
	)
	${RDEPEND}
"
SRC_TEST=do
