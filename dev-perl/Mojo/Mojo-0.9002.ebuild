# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=SRI
inherit perl-module

DESCRIPTION="The Web In A Box!"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-MIME-Base64
	virtual/perl-File-Temp
	virtual/perl-File-Spec
	virtual/perl-Encode
	virtual/perl-Digest-MD5
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-Test-Simple
		virtual/perl-Test-Harness
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
