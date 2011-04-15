# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR="NEVESENIN"
MODULE_VERSION="1.001_002"

inherit perl-module perl-declaredeps

DESCRIPTION="Groups a regular expressions collection"

SLOT="0"
KEYWORDS=""
IUSE=""

test-depend-virtual Test-Simple # Test::More
ddep_setup

SRC_TEST="do"
