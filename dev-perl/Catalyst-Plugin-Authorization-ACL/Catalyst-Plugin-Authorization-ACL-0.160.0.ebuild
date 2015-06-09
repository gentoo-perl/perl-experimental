# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.16
inherit perl-module

DESCRIPTION="ACL support for Catalyst applications"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
PERL_RM_FILES=(
	t/release-pod-syntax.t
)
RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Catalyst-Runtime-5.800.130
	dev-perl/Class-Throwable
	virtual/perl-Exporter
	virtual/perl-Scalar-List-Utils
	dev-perl/Moose
	dev-perl/MRO-Compat
	dev-perl/namespace-autoclean
	dev-perl/Tree-Simple
	dev-perl/Tree-Simple-VisitorFactory
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-Test-Simple
		dev-perl/Catalyst-Plugin-Authentication
		dev-perl/Catalyst-Plugin-Authorization-Roles
		dev-perl/Catalyst-Plugin-Session
		dev-perl/Catalyst-Plugin-Session-State-Cookie
		virtual/perl-File-Spec
		virtual/perl-IO
		dev-perl/Test-WWW-Mechanize-Catalyst
	)
"
