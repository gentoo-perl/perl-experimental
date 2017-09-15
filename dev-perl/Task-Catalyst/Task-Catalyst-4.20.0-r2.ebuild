# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=4.02
inherit perl-module

DESCRIPTION="All you need to start with Catalyst"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/release-pod-syntax.t
	t/release-pod-coverage.t
)
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.0
	dev-perl/Catalyst-Action-REST
	dev-perl/Catalyst-ActionRole-ACL
	dev-perl/Catalyst-Authentication-Credential-HTTP
	dev-perl/Catalyst-Authentication-Store-DBIx-Class
	dev-perl/Catalyst-Component-InstancePerContext
	dev-perl/Catalyst-Controller-ActionRole
	>=dev-perl/Catalyst-Devel-1.260.0
	>=dev-perl/Catalyst-Manual-5.800.0
	dev-perl/Catalyst-Model-Adaptor
	dev-perl/Catalyst-Model-DBIC-Schema
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-I18N
	dev-perl/Catalyst-Plugin-Session
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	dev-perl/Catalyst-Plugin-Session-Store-DBIC
	dev-perl/Catalyst-Plugin-Session-Store-File
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-Plugin-Static-Simple
	>=dev-perl/Catalyst-Runtime-5.900.420
	dev-perl/Catalyst-View-Email
	dev-perl/Catalyst-View-TT
	dev-perl/CatalystX-Component-Traits
	dev-perl/CatalystX-LeakChecker
	dev-perl/CatalystX-Profile
	dev-perl/CatalystX-REPL
	dev-perl/CatalystX-SimpleLogin
	dev-perl/FCGI
	dev-perl/FCGI-ProcManager
	dev-perl/Starman
	dev-perl/Test-WWW-Mechanize-Catalyst
	dev-perl/local-lib
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? ( virtual/perl-Test-Simple )
"
