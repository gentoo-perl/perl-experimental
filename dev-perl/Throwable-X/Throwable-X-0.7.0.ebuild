# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.007
inherit perl-module

DESCRIPTION="useful eXtra behavior for Throwable exceptions"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Moose::Role -> Moose
# Moose::Util::TypeConstraints -> Moose
# Role::HasMessage::Errf -> Role-HasMessage
# Role::HasPayload::Merged -> Role-HasPayload
# Role::Identifiable::HasIdent -> Role-Identifiable
# Role::Identifible::HasTags -> Role-Identifiable
# IO::Handle -> IO
# IPC::Open3 -> perl
RDEPEND="
	dev-perl/Moose
	dev-perl/MooseX-OneArgNew
	>=dev-perl/Role-HasMessage-0.5.0
	>=dev-perl/Role-HasPayload-0.5.0
	>=dev-perl/Role-Identifiable-0.5.0
	dev-perl/Sub-Exporter
	dev-perl/Throwable
	dev-perl/namespace-clean
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		>=virtual/perl-Test-Simple-0.960.0
	)
"
