# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=MITHALDU
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION="A two-phase Test library. One: Generate outputs. Two: Compare them"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
# rdep FileHandle -> perl
#      Test::More -> perl-Test-Simple
RDEPEND="
	dev-perl/Algorithm-Diff
	dev-perl/Test-Differences
	virtual/perl-Test-Simple
	dev-perl/Text-Diff
"
# bdep DirHandle -> perl
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.400.0
	virtual/perl-File-Spec
	dev-perl/Test-MockObject
"
PERL_RM_FILES=(
	t/boilerplate.t
	t/perlcritic.t
	t/pod-coverage.t
	t/pod.t
	t/podspell.t
)
