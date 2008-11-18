# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=DKAMHOLZ
inherit perl-module

DESCRIPTION="interface to read and modify Apache .htpasswd files"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	virtual/perl-Module-Build
	dev-perl/Class-Accessor
	dev-perl/IO-LockedFile
	dev-perl/Crypt-PasswdMD5
	dev-perl/Digest-SHA1
"
