# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=RSRCHBOY
MODULE_VERSION=0.002
inherit perl-module

DESCRIPTION='Simple closure-driven TAP generator'
LICENSE=" LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PERL_RM_FILES=(
	t/author-pod-spell.t
	t/release-consistent-version.t
	t/release-eol.t
	t/release-has-version.t
	t/release-minimum-version.t
	t/release-no-smart-comments.t
	t/release-no-tabs.t
	t/release-pod-coverage.t
	t/release-pod-linkcheck.t
	t/release-pod-syntax.t
)
# IO::Handle -> IO
# IPC::Open3 -> perl
RDEPEND="
	dev-perl/Sub-Exporter-Progressive
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		>=dev-perl/Test-CheckDeps-0.10.0
		>=virtual/perl-Test-Simple-0.940.0
	)
"
