# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=APEIRON
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="A Glimpse at an Enlightened Perl (Logging)"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+logdispatch +log4perl +logcontextual"
comment() { echo ''; }
COMMON_DEPEND="
	logdispatch? (
		dev-perl/log-dispatch $(comment Log::Dispatch)
	)
	log4perl? (
		dev-perl/Log-Log4perl
	)
	logcontextual? (
		dev-perl/Log-Contextual
	)
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
