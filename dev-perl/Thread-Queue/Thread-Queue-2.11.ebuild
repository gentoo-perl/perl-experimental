# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=JDHEDDEN
inherit perl-module

DESCRIPTION="Thread-safe queues"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=virtual/perl-threads-shared-1.21
	virtual/perl-Scalar-List-Utils
	dev-perl/Thread-Semaphore"
DEPEND="${RDEPEND}"

SRC_TEST=do
