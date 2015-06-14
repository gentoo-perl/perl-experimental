# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.009
inherit perl-module

DESCRIPTION='static variables without namespace pollution'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/pod_syn.t
	t/pod_cvg.t
)
RDEPEND="
	>=dev-perl/Lexical-SealRequireHints-0.6.0
	virtual/perl-XSLoader
	!<dev-perl/B-Hooks-OP-Check-0.190.0
"
DEPEND="${RDEPEND}
	dev-perl/Module-Build
	>=virtual/perl-ExtUtils-CBuilder-0.150.0
	test? (
		virtual/perl-Test-Simple
	)
"
