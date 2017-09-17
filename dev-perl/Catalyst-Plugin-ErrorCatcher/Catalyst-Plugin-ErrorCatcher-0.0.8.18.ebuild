# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=CHISEL
MODULE_VERSION=0.0.8.18
inherit perl-module

DESCRIPTION='Catch application errors and emit them somewhere'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Catalyst::ClassData -> Catalyst-Runtime
# IO::File -> perl-IO
# Module::Pluggable::Object -> Module-Pluggable
# Sys::Hostname -> perl
RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Data-Dump
	dev-perl/DateTime
	dev-perl/File-Slurp
	dev-perl/File-Type
	virtual/perl-IO
	dev-perl/MIME-Lite
	dev-perl/Module-Pluggable
	dev-perl/Moose
	dev-perl/Path-Class
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=dev-perl/Catalyst-Plugin-Authentication-0.100.100
		>=dev-perl/Catalyst-Plugin-ConfigLoader-0.220.0
		dev-perl/Catalyst-Plugin-Session
		dev-perl/Catalyst-Plugin-Session-State-Cookie
		dev-perl/Catalyst-Plugin-Session-Store-File
		>=dev-perl/Catalyst-Plugin-StackTrace-0.100.0
		>=dev-perl/Catalyst-Runtime-5.800.0
		dev-perl/Config-General
		dev-perl/File-Find-Rule
		dev-perl/FindBin-libs
		dev-perl/HTTP-Message
		dev-perl/MRO-Compat
		dev-perl/Test-Exception
		>=virtual/perl-Test-Simple-0.920.0
		dev-perl/Test-UseAllModules
		dev-perl/namespace-autoclean
		virtual/perl-version
	)
"
