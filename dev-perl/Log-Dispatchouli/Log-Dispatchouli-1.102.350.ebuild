# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit versionator
MY_P=${PN}-$(delete_version_separator 2 )
S=${WORKDIR}/${MY_P}
MODULE_AUTHOR=RJBS

inherit perl-module

DESCRIPTION="Simple wrapper around Log::Dispatch"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Try-Tiny-0.04
	>=virtual/perl-Sys-Syslog-0.16
	dev-perl/Log-Dispatch-Array
	dev-perl/Params-Util
	dev-perl/String-Flogger
	dev-perl/log-dispatch
	virtual/perl-Scalar-List-Utils
"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.88
		dev-perl/Test-Deep
	)
"

SRC_TEST=do
