# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=XSAWYERX
MODULE_VERSION=0.007
inherit perl-module

DESCRIPTION="Require logged-in user for specified routes"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Dancer2-0.154.0
"

DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.170.0
	virtual/perl-File-Spec
	>=virtual/perl-File-Temp-0.190.0
	dev-perl/HTTP-Cookies
	dev-perl/HTTP-Message
	dev-perl/Plack
	>=virtual/perl-Test-Simple-0.96.0
"
