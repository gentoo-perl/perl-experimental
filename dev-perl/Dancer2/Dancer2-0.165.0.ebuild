# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=XSAWYERX
MODULE_VERSION=0.165000
inherit perl-module

DESCRIPTION="Lightweight yet powerful web application framework"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-perl/App-Cmd
	virtual/perl-Carp
	dev-perl/Class-Load
	dev-perl/Config-Any
	virtual/perl-Digest-SHA
	virtual/perl-Encode
	virtual/perl-Exporter
	virtual/perl-File-Spec
	dev-perl/HTTP-Body
	dev-perl/HTTP-Date
	dev-perl/HTTP-Headers-Fast
	virtual/perl-HTTP-Tiny
	dev-perl/Hash-Merge-Simple
	dev-perl/Import-Into
	dev-perl/JSON
	virtual/perl-MIME-Base64
	>=dev-perl/Moo-2.0.0
	dev-perl/MooX-Types-MooseLike
	>=dev-perl/Plack-1.3.500
	dev-perl/Plack-Middleware-FixMissingBodyInRedirect
	dev-perl/Plack-Middleware-RemoveRedundantBody
	dev-perl/Return-MultiLevel
	>=dev-perl/Role-Tiny-2.0.0
	dev-perl/Safe-Isa
	dev-perl/Template-Tiny
	dev-perl/URI
	virtual/perl-parent
"

DEPEND="
	${RDEPEND}
	>=dev-perl/Capture-Tiny-0.120.0
	virtual/perl-ExtUtils-MakeMaker
	dev-perl/HTTP-Cookies
	dev-perl/HTTP-Message
	virtual/perl-IO
	dev-perl/Template-Toolkit
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.920.0
	>=dev-perl/yaml-0.860.0
	>=dev-perl/File-ShareDir-Install-0.60.0
"
