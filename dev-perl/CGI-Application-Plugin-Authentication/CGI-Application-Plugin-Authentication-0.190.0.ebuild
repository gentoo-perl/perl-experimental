# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=SILASMONK
MODULE_VERSION="0.19"
inherit perl-module

DESCRIPTION="Authentication framework for CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="recommended"
comment() { echo ''; }
RDEPEND="
	>=dev-perl/CGI-Application-4.0.0
	>=virtual/perl-CGI-3.160 $(comment 3.160.0)
	dev-perl/Digest-SHA1
	dev-perl/UNIVERSAL-require
	virtual/perl-Attribute-Handlers
	virtual/perl-Class-ISA
	virtual/perl-MIME-Base64
	virtual/perl-Scalar-List-Utils
	recommended? (
		>=dev-perl/Apache-Htpasswd-1.800.0
		>=dev-perl/Color-Calc-0.120.0
		dev-perl/CGI-Application-Plugin-Session
		virtual/perl-Digest-MD5
	)

"
DEPEND="
	>=dev-perl/Test-Warn-0.11 $(comment 0.110.0)
	>=virtual/perl-Module-Build-0.36 $(comment 0.360.0)
"
#	dev-perl/Task-Weaken
DEPEND="${DEPEND}
	dev-perl/Test-Exception
	dev-perl/Test-MockObject
	dev-perl/Test-NoWarnings
	dev-perl/Test-Regression
	dev-perl/Test-Taint
	dev-perl/Test-Without-Module
	>=virtual/perl-Test-Simple-0.93 $(comment 0.930.0)
	${RDEPEND}
"
SRC_TEST=do
