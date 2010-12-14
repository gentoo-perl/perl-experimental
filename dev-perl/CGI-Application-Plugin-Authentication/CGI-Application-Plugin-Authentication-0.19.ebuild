# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=SILASMONK
inherit perl-module

DESCRIPTION="Authentication framework for CGI::Application"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="recommended"
RDEPEND="
	>=dev-perl/CGI-Application-4
	>=virtual/perl-CGI-3.16
	dev-perl/Digest-SHA1
	dev-perl/UNIVERSAL-require
	virtual/perl-Attribute-Handlers
	virtual/perl-Class-ISA
	virtual/perl-MIME-Base64
	virtual/perl-Scalar-List-Utils
	recommended? (
		>=dev-perl/Apache-Htpasswd-1.8
		>=dev-perl/Color-Calc-0.12
		dev-perl/CGI-Application-Plugin-Session
		virtual/perl-Digest-MD5
	)

"
DEPEND="
	>=dev-perl/Test-Warn-0.11
	>=virtual/perl-Module-Build-0.36
"
#	dev-perl/Task-Weaken
DEPEND="${DEPEND}
	dev-perl/Test-Exception
	dev-perl/Test-MockObject
	dev-perl/Test-NoWarnings
	dev-perl/Test-Regression
	dev-perl/Test-Taint
	dev-perl/Test-Without-Module
	>=virtual/perl-Test-Simple-0.93
	${RDEPEND}
"
SRC_TEST=do
