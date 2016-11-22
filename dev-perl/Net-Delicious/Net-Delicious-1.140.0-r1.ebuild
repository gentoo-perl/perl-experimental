# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=1.14
inherit perl-module

DESCRIPTION='OOP for the del.icio.us API'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Date::Parse -> TimeDate
# FileHandle 2 -> perl
# HTTP::Request -> HTTP-Message
# IO::AtomicFile -> IO-stringy
# LWP::UserAgent -> libwww-perl
# YAML 0.35 -> yaml
RDEPEND="
	>=dev-perl/Config-Simple-2.0.0
	dev-perl/Crypt-SSLeay
	>=virtual/perl-File-Spec-0.800.0
	dev-perl/HTTP-Message
	>=dev-perl/IO-stringy-2.100.0
	>=dev-perl/Log-Dispatch-2.0.0
	>=virtual/perl-Time-HiRes-1.650.0
	>=dev-perl/TimeDate-2.270.0
	dev-perl/URI
	>=dev-perl/XML-Simple-2.0.0
	dev-perl/libwww-perl
	>=dev-perl/YAML-0.350.0
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.360.0
	>=virtual/perl-Test-Simple-0.470.0
"
