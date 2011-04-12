# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=SILASMONK
MODULE_VERSION="0.17"
inherit perl-module

DESCRIPTION="Authentication framework for CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="recommended"
RDEPEND="
	>=dev-perl/CGI-Application-4
	virtual/perl-Scalar-List-Utils
	virtual/perl-Class-ISA
	dev-perl/UNIVERSAL-require
	virtual/perl-CGI
	virtual/perl-MIME-Base64
	dev-perl/Digest-SHA1
	recommended? (
		virtual/perl-Digest-MD5
		dev-perl/CGI-Application-Plugin-Session
		>=dev-perl/Apache-Htpasswd-1.800.0
		>=dev-perl/Color-Calc-0.120.0
	)

"
DEPEND="
	>=dev-perl/Test-Warn-0.11
	virtual/perl-Test-Simple
	dev-perl/Task-Weaken
	dev-perl/Test-Exception
	${RDEPEND}
"
SRC_TEST=do
