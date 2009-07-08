# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="A generic interface for interacting with various version control systems"
HOMEPAGE="http://search.cpan.org/dist/VCI/"
SRC_URI="mirror://cpan/authors/id/M/MK/MKANAT/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="mirror"

IUSE="bzr cvs git mercurial subversion test"
RDEPEND=">=dev-lang/perl-5.6.0
	>=dev-perl/Moose-0.27
	dev-perl/MooseX-Method
	dev-perl/DateTime
	>=dev-perl/Path-Abstract-0.093
	dev-perl/DateTime-Format-DateParse
	>=dev-perl/Text-Diff-Parser-0.07
	bzr? (
		dev-util/bzr
		virtual/perl-IPC-Cmd
		>=virtual/perl-Module-Load-Conditional-0.24
		dev-perl/IPC-Run
		dev-perl/XML-Simple
	)
	subversion? (
		>=dev-util/subversion-1.2
		virtual/perl-File-Spec
	)
	mercurial? (
		dev-util/mercurial
		dev-perl/libwww-perl
		dev-perl/XML-Simple
	)
	git? (
		dev-util/git
		virtual/perl-File-Spec
	)
	cvs? (
		dev-util/cvs
		virtual/perl-IPC-Cmd
		>=virtual/perl-Module-Load-Conditional-0.24
		>=dev-perl/IPC-Run-0.55
		dev-perl/XML-Simple
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
	if use git && ! perl -MGit < /dev/null 2> /dev/null; then
		eerror "Git missing or outdated."
		eerror "Please emerge dev-util/git with the perl USE flag."
		die "Need Git compiled with Perl bindings"
	fi

	if use subversion && ! perl -MSVN::Core < /dev/null 2> /dev/null; then
		eerror "SVN::Core missing or outdated."
		eerror "Please emerge dev-util/subversion with the perl USE flag."
		die "Need Subversion compiled with Perl bindings"
	fi

	if use subversion && built_with_use dev-util/subversion dso; then
		eerror "Subversion's Perl bindings segfault with USE=dso."
		eerror "See https://bugs.gentoo.org/show_bug.cgi?id=223747."
		die "Disable dso USE flag for dev-util/subversion"
	fi
}
