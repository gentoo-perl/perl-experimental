# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=CFRANKS
MODULE_VERSION=1.00
inherit perl-module

DESCRIPTION='Catalyst integration for HTML::FormFu'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Test::Aggregate::Nested -> Test-Aggregate
RDEPEND="
	dev-perl/Catalyst-Component-InstancePerContext
	>=dev-perl/Catalyst-Runtime-5.710.10
	dev-perl/Config-Any
	virtual/perl-File-Spec
	>=dev-perl/HTML-FormFu-1.0.0
	>=dev-perl/Moose-1.0.0
	>=dev-perl/MooseX-Attribute-Chained-1.0.1
	dev-perl/Regexp-Assemble
	virtual/perl-Scalar-List-Utils
	dev-perl/Task-Weaken
	dev-perl/namespace-autoclean
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		dev-perl/Catalyst-Action-RenderView
		dev-perl/Catalyst-Plugin-Session
		dev-perl/Catalyst-Plugin-Session-State-Cookie
		dev-perl/Catalyst-Plugin-Session-Store-File
		dev-perl/Template-Toolkit
		>=dev-perl/Test-Aggregate-0.371.0
		>=virtual/perl-Test-Simple-0.920.0
		>=dev-perl/Test-WWW-Mechanize-1.160.0
		dev-perl/Test-WWW-Mechanize-Catalyst
	)
"
