# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.006
inherit perl-module perl-declaredeps

DESCRIPTION="useful eXtra behavior for Throwable exceptions"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

bdepend Moose
bdepend-virtual Test-Simple 0.96 # Test-More

cdepend-virtual ExtUtils-MakeMaker 6.56

# depend Moose-Role # Moose
# depend Moose-Util-TypeConstraints
depend MooseX-OneArgNew;
depend Role-HasMessage 0.5 # Role-HasMessage-Errf
depend Role-HasPayload 0.5 # Role-HasPayload-Merged
depend Role-Identifiable 0.5 # Role-Identifiable-HasIdent, Role-Identifiable-HasTags
depend Sub-Exporter
depend Throwable
depend namespace-clean

ddep_setup;

SRC_TEST="do"
