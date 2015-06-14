# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=SILASMONK
MODULE_VERSION="0.20"
inherit perl-module

DESCRIPTION="Authentication framework for CGI::Application"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="recommended"

PATCHES=(
	# https://rt.cpan.org/Ticket/Display.html?id=99460
	"${FILESDIR}/${MODULE_VERSION}/cgipm-4.05.patch"
)
PERL_RM_FILES=(
	t/podspell.t
	t/99_pod_coverage.t
	t/98_pod.t
	# https://rt.cpan.org/Ticket/Display.html?id=85969
	t/03_login_box.t
)
PERL_RESTRICT="parallel-test"
RDEPEND="
	>=dev-perl/CGI-Application-4.0.0
	virtual/perl-Scalar-List-Utils
	dev-perl/Class-ISA
	virtual/perl-Attribute-Handlers
	dev-perl/UNIVERSAL-require
	>=dev-perl/CGI-3.160.0
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
	>=dev-perl/Module-Build-0.360.0
	>=virtual/perl-Test-Simple-0.930.0
	>=dev-perl/Test-Warn-0.110.0
	dev-perl/Test-MockObject
	dev-perl/Test-Exception
	dev-perl/Test-NoWarnings
	dev-perl/Test-Regression
	dev-perl/Test-Taint
	dev-perl/Test-Without-Module
	dev-perl/Readonly
	${RDEPEND}
"
