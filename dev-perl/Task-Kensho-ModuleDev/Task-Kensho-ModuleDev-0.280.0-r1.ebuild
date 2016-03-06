# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (module development tools)"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+dzil +moduleinstall +nytprof +perltidy +perlcritic +carpalways
+modernperl +perlversion +softwarelicense +podreadme +cpanuploader"
COMMON_DEPEND="
	dzil? ( dev-perl/Dist-Zilla )
	moduleinstall? ( dev-perl/Module-Install )
	nytprof? ( dev-perl/Devel-NYTProf )
	perltidy? ( dev-perl/perltidy )
	perlcritic? ( dev-perl/Perl-Critic )
	carpalways? ( dev-perl/Carp-Always )
	modernperl? ( dev-perl/Modern-Perl )
	perlversion? ( dev-perl/Perl-Version )
	softwarelicense? ( dev-perl/Software-License )
	podreadme? ( dev-perl/Pod-Readme )
	cpanuploader? ( dev-perl/CPAN-Uploader )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
