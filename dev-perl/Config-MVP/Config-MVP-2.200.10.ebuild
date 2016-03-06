# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=2.200010
inherit perl-module

DESCRIPTION='multivalue-property package-oriented configuration'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Module::Pluggable::Object -> Module-Pluggable
# Moose::Role -> Moose
# Moose::Util::TypeConstraints -> Moose
# Role::Identifiable::HasIdent -> Role-Identifiable
# StackTrace::Auto -> Throwable
# Test::More -> Test-Simple (Yes, Runtime)
RDEPEND="
	>=dev-perl/Class-Load-0.170.0
	virtual/perl-File-Spec
	dev-perl/Module-Pluggable
	dev-perl/Module-Runtime
	>=dev-perl/Moose-0.910.0
	dev-perl/MooseX-OneArgNew
	dev-perl/Params-Util
	dev-perl/Role-HasMessage
	dev-perl/Role-Identifiable
	>=virtual/perl-Test-Simple-0.960.0
	dev-perl/Throwable
	dev-perl/Tie-IxHash
	dev-perl/Try-Tiny
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Test-Fatal
	)
"
