# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=FLORA
MODULE_VERSION="4.00"
inherit perl-module

DESCRIPTION="All you need to start with Catalyst"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND="
	dev-perl/Catalyst-Authentication-Credential-HTTP
	dev-perl/Catalyst-Plugin-ConfigLoader
	>=dev-perl/Catalyst-Devel-1.260.0
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	dev-perl/CatalystX-Component-Traits
	dev-perl/Catalyst-Action-REST
	>=dev-perl/Catalyst-Runtime-5.800
	dev-perl/Test-WWW-Mechanize-Catalyst
	dev-perl/Catalyst-Controller-ActionRole
	dev-perl/CatalystX-LeakChecker
	dev-perl/local-lib
	dev-perl/Catalyst-Authentication-Store-DBIx-Class
	dev-perl/Catalyst-Engine-PSGI
	dev-perl/Catalyst-ActionRole-ACL
	dev-perl/Catalyst-View-TT
	dev-perl/CatalystX-Profile
	dev-perl/Catalyst-Plugin-Session
	dev-perl/Catalyst-Model-DBIC-Schema
	dev-perl/Catalyst-Model-Adaptor
	dev-perl/Catalyst-Component-InstancePerContext
	dev-perl/FCGI-ProcManager
	dev-perl/CatalystX-REPL
	dev-perl/Catalyst-Plugin-Session-Store-DBIC
	dev-perl/FCGI
	dev-perl/Catalyst-Plugin-Session-Store-BerkeleyDB
	dev-perl/Catalyst-View-Email
	>=dev-perl/Catalyst-Manual-5.80
	dev-perl/Catalyst-Plugin-Static-Simple
	dev-perl/CatalystX-SimpleLogin
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-Plugin-Unicode-Encoding
	dev-perl/Catalyst-Plugin-I18N
	dev-perl/Catalyst-Engine-HTTP-Prefork
	dev-perl/Catalyst-Plugin-Authentication
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
