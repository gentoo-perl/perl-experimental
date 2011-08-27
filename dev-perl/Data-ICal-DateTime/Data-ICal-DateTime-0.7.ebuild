# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SIMONW
MODULE_VERSION=0.7
inherit perl-module perl-declaredeps

DESCRIPTION="Convenience methods for using Data::ICal with DateTime"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

depend Class-Accessor
depend Data-ICal 0.07
depend Clone
depend DateTime-Set
depend DateTime-Format-ICal

test-depend-virtual Test-Simple
test-depend Test-Warn
test-depend Test-NoWarnings
test-depend Test-LongString

ddep_setup

SRC_TEST=do
