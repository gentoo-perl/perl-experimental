# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DROLSKY
MODULE_VERSION=0.24
inherit perl-module

DESCRIPTION='Watch for changes to files, cross-platform style'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test inotify"

# File::Find -> perl
# Module::Pluggable::Object -> Module-Pluggable
# Moose::Util::TypeConstraints
# FindBin -> perl
# Test::More -> Test-Simple
RDEPEND_inotify="
	>=dev-perl/Linux-Inotify2-1.200.0
"
PERL_RM_FILES=(
	t/author-pod-spell.t
	t/release-cpan-changes.t
	t/release-eol.t
	t/release-pod-no404s.t
	t/release-pod-syntax.t
	t/release-synopsis.t
	t/release-try-load.t
)

RDEPEND="
	inotify? ( ${RDEPEND_inotify} )
	virtual/perl-Carp
	dev-perl/Class-Load
	virtual/perl-File-Spec
	dev-perl/List-MoreUtils
	dev-perl/Module-Pluggable
	dev-perl/Moose
	dev-perl/MooseX-Params-Validate
	dev-perl/MooseX-SemiAffordanceAccessor
	virtual/perl-Time-HiRes
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.360.100
	test? (
		virtual/perl-Data-Dumper
		virtual/perl-Exporter
		virtual/perl-File-Path
		virtual/perl-File-Temp
		dev-perl/Test-Exception
		virtual/perl-Test-Simple
	)
"
