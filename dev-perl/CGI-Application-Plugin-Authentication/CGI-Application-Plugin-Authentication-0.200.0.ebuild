# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=SILASMONK
MODULE_VERSION="0.20"
inherit perl-module

DESCRIPTION="Authentication framework for CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
comment() { echo ''; }
IUSE="recommended"
RDEPEND="
	>=dev-perl/CGI-Application-4.0.0
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	virtual/perl-Class-ISA
	virtual/perl-Attribute-Handlers
	dev-perl/UNIVERSAL-require
	>=virtual/perl-CGI-3.160 $(comment 3.160.0)
	virtual/perl-MIME-Base64
	virtual/perl-Digest-SHA
	recommended? (
		virtual/perl-Digest-MD5
		dev-perl/CGI-Application-Plugin-Session
		>=dev-perl/Apache-Htpasswd-1.800.0
		>=dev-perl/Color-Calc-0.120.0
	)

"
DEPEND="
	>=virtual/perl-Module-Build-0.36.0 $(comment 0.360.0)
	>=virtual/perl-Test-Simple-0.93 $(comment Test::More 0.930.0)
	>=dev-perl/Test-Warn-0.11 $(comment 0.110.0)
	dev-perl/Test-MockObject
	dev-perl/Test-Exception
	dev-perl/Test-NoWarnings
	dev-perl/Test-Regression
	dev-perl/Test-Taint
	dev-perl/Test-Without-Module
	dev-perl/Readonly

	${RDEPEND}
"
SRC_TEST=do
