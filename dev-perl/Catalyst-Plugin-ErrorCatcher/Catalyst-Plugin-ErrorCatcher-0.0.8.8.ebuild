# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=CHISEL
MODULE_VERSION=0.0.8.8
inherit perl-module

DESCRIPTION="Catch application errors and emit them somewhere"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	dev-perl/Class-Data-Accessor
	dev-perl/Data-Dump
	dev-perl/DateTime
	dev-perl/File-Slurp
	virtual/perl-IO $(comment IO::File)
	dev-perl/MIME-Lite
	dev-perl/MRO-Compat
	virtual/perl-Module-Pluggable $(comment Module::Pluggable::Object)
	dev-perl/Path-Class
	$(comment virtual/Sys-Hostname)
"
DEPEND="${RDEPEND}
	dev-perl/Catalyst-Runtime
	$(comment Catalyst::Controller)
	>=dev-perl/Catalyst-Plugin-Authentication-0.100.100
	>=dev-perl/Catalyst-Plugin-ConfigLoader-0.220.0
	dev-perl/Catalyst-Plugin-Session
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	dev-perl/Catalyst-Plugin-Session-Store-File
	>=dev-perl/Catalyst-Plugin-StackTrace-0.100.0
	$(comment Catalyst::Test)
	dev-perl/config-general
	dev-perl/DateTime
	dev-perl/File-Find-Rule
	virtual/perl-File-Path
	dev-perl/File-Slurp
	dev-perl/FindBin-libs
	virtual/perl-IO $(comment IO::File)
	dev-perl/MIME-Lite
	dev-perl/MRO-Compat
	dev-perl/Moose
	dev-perl/Path-Class
	$(comment virtual/Sys-Hostname)
	dev-perl/Test-Exception
	>=virtual/perl-Test-Simple-0.92 $(comment Test::More 0.920.0)
	$(comment virtual/overlaod)
	virtual/perl-version
	$(comment CONFIGURE REQUIRES)
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
SRC_TEST="do"
