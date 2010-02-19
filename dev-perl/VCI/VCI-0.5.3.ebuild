# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MKANAT
inherit perl-module

DESCRIPTION="A generic interface for interacting with various version control systems"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="bazaar cvs git mercurial subversion test"
RDEPEND=">=dev-perl/Moose-0.27
	dev-perl/MooseX-Method
	dev-perl/DateTime
	>=dev-perl/Path-Abstract-0.093
	dev-perl/DateTime-Format-DateParse
	>=dev-perl/Text-Diff-Parser-0.07
	bazaar? (
		dev-util/bzr
		>=virtual/perl-IPC-Cmd-0.42
		>=virtual/perl-Module-Load-Conditional-0.24
		>=dev-perl/IPC-Run-0.55
		dev-perl/XML-Simple
	)
	subversion? (
		>=dev-util/subversion-1.2[perl]
		virtual/perl-File-Spec
	)
	mercurial? (
		dev-util/mercurial
		dev-perl/libwww-perl
		dev-perl/XML-Simple
	)
	git? (
		dev-util/git[perl]
		virtual/perl-File-Spec
	)
	cvs? (
		dev-util/cvs
		>=virtual/perl-IPC-Cmd-0.42
		>=virtual/perl-Module-Load-Conditional-0.24
		>=dev-perl/IPC-Run-0.55
		virtual/perl-File-Spec
		virtual/perl-File-Temp
		virtual/perl-Scalar-List-Utils
	)"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Exception
		dev-perl/Test-Warn
		virtual/perl-File-Spec
	)"

pkg_setup() {
	if use subversion && built_with_use dev-util/subversion dso; then
		eerror "Subversion's Perl bindings segfault with USE=dso."
		eerror "See https://bugs.gentoo.org/show_bug.cgi?id=223747."
		die "Disable dso USE flag for dev-util/subversion"
	fi
}
