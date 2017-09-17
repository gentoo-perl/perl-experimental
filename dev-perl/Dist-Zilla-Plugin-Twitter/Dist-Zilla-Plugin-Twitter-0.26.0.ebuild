# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DOHERTY
MODULE_VERSION=0.026
inherit perl-module

DESCRIPTION='Twitter when you release with Dist::Zilla'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Config::INI::Reader -> Config-INI
# Config::INI::Writer -> Config-INI
# Dist::Zilla::Role::AfterRelease -> Dist-Zilla
# Dist::Zilla::Role::TextTemplate -> Dist-Zilla
# Dist::Zilla::Util -> Dist::Zilla
# WWW::Shorten::TinyURL -> WWW-Shorten
# HTTP::Response -> HTTP-Message
RDEPEND="
	dev-perl/Config-INI
	>=dev-perl/Dist-Zilla-4.0.0
	virtual/perl-File-Path
	virtual/perl-File-Spec
	>=dev-perl/Moose-0.990.0
	>=dev-perl/Net-Twitter-4.0.10
	dev-perl/Try-Tiny
	>=dev-perl/WWW-Shorten-3.20.0
	dev-perl/WWW-Shorten-Simple
	>=dev-perl/namespace-autoclean-0.90.0

"
DEPEND="
	>=dev-perl/Module-Build-0.280.0
	test? (
		dev-perl/HTTP-Message
		virtual/perl-IO
		dev-perl/libwww-perl
		dev-perl/Params-Util
		dev-perl/Sub-Exporter
		>=virtual/perl-Test-Simple-0.880.0
	)
"
