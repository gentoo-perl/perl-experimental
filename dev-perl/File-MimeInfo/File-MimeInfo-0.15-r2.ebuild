# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/File-MimeInfo/File-MimeInfo-0.15-r1.ebuild,v 1.14 2011/04/09 15:53:13 maekke Exp $

EAPI=3

MODULE_AUTHOR=PARDUS
MODULE_SECTION=${PN}
inherit perl-module

DESCRIPTION="Determine file type"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PATCHES=(
	"${FILESDIR}/${PV}/0001-Suggested-fix-for-RT-66841.patch"
)
RDEPEND=">=dev-perl/File-BaseDir-0.03
	>=dev-perl/File-DesktopEntry-0.04
	x11-misc/shared-mime-info"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	test? ( dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"

SRC_TEST="do"
