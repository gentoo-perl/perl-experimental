# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION="0.010"
inherit perl-module perl-declaredeps

DESCRIPTION="Twitter when you release with Dist::Zilla"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

cdepend-virtual ExtUtils-MakeMaker 6.56

bdepend Dist-Zilla 4 # Dist-Zilla-App-Tester
#bdepend Dist-Zilla 4 # Dist-Zilla-Role-Releaser 
#bdepend Dist-Zilla 4 # Dist-Zilla-Tester
# bdepend-virtual File-Find # CORE
bdepend-virtual File-Temp
bdepend libwww-perl #  HTTP-Response
#bdepend libwww-perl # LWP-USerAgent
bdepend Params-Util
bdepend Path-Class
bdepend Sub-Exporter
bdepend-virtual Test-Simple 0.88 # Test-More

#depend Carp # CORE
depend Dist-Zilla 4
# depend Dist-Zilla 4 # Dist-Zilla-Role-AfterRelease
# depend Dist-Zilla 4 # Dist-Zilla-Role-TextTemplate
# depend Math-BigFloat # CORE
depend Moose 0.99
depend-virtual libnet # Net-Netrc
depend Net-Twitter 3
depend WWW-Shorten 3.20
depend WWW-Shorten-Simple
#depend WWW-Shorten # WWW-Shorten-TinyURL 
depend namespace-autoclean 0.09
#depend-virtual utf8 # CORE

ddep_setup
SRC_TEST="do"
