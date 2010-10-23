# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=DAGOLDEN
inherit perl-module

DESCRIPTION="provide a version number by bumping the last git release tag"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-4
	dev-perl/Git-Wrapper
	dev-perl/Moose
	dev-perl/Version-Next
	>=dev-perl/namespace-autoclean-0.09
	>=virtual/perl-version-0.80
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	>=virtual/perl-Test-Simple-0.88
	dev-perl/File-Copy-Recursive
	dev-perl/File-pushd
	dev-perl/Path-Class
	virtual/perl-File-Temp
"
RDEPEND="
	${COMMON_DEPEND}
"
deprecated(){
	ewarn "This package is deprecated upstream and will be removed from
perl-experimental on, or after, November 23.
Please use dev-perl/Dist-Zilla-Plugin-Git instead for the
Git::NextVersion plugin"
}

pkg_postinst(){
	deprecated;
}
src_unpack(){
	deprecated;
	perl-module_src_unpack;
}

SRC_TEST="do"
