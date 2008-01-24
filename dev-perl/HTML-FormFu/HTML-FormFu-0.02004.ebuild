# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="HTML Form Creation, Rendering and Validation Framework"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/C/CF/CFRANKS/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"
RESTRICT="nomirror"

IUSE=""
DEPEND="
	dev-perl/Class-Accessor-Chained
	dev-perl/Class-C3
	>=dev-perl/Config-Any-0.10
	dev-perl/Data-Visitor
	dev-perl/Date-Calc
	>=dev-perl/DateTime-Format-Builder-0.7901
	dev-perl/DateTime-Format-Strptime
	dev-perl/DateTime-Locale
	dev-perl/Email-Valid
	dev-perl/File-ShareDir
	dev-perl/HTML-Scrubber
	dev-perl/HTML-TokeParser-Simple
	dev-perl/libwww-perl
	dev-perl/List-MoreUtils
	dev-perl/Locale-Maketext-Simple
	dev-perl/Module-Pluggable
	dev-perl/Regexp-Copy
	dev-perl/Regexp-Common
	dev-perl/Task-Weaken
	dev-perl/YAML-Syck
	dev-perl/Template-Toolkit
"

