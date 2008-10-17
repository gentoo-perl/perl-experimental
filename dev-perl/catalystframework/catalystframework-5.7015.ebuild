# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

DESCRIPTION="Meta package for Catalyst - The Elegant MVC Web Application
Framework, and all the plugins you need to get started"
HOMEPAGE="http://www.catalystframework.org/"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"

S=${WORKDIR}

IUSE=""
DEPEND="
	>=dev-perl/Task-Catalyst-3.0000
	dev-perl/Catalyst-Manual
"
