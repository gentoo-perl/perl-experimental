# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=SHLOMIF
MODULE_VERSION=v0.2.12
inherit perl-module

DESCRIPTION="An object oriented File::Find replacement"

LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Fcntl -> perl
# List::Util -> Scalar-List-Utils
# File::Path -> perl
RDEPEND="
	virtual/perl-Carp
	dev-perl/Class-XSAccessor
	virtual/perl-File-Spec
	virtual/perl-Scalar-List-Utils
	virtual/perl-parent
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.360.0
	test? (
		virtual/perl-Test-Simple
	)
"
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
	t/style-trailing-space.t
)
