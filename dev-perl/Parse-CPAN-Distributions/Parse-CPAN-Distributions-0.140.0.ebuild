# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BARBIE
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION='Provides an index for current CPAN distributions'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# File::Basename -> perl
# IO::File -> IO
# LWP::UserAgent
RDEPEND="
	dev-perl/CPAN-DistnameInfo
	virtual/perl-File-Path
	dev-perl/File-Slurp
	virtual/perl-File-Temp
	virtual/perl-IO
	virtual/perl-IO-Zlib
	dev-perl/libwww-perl
	virtual/perl-version
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.700.0
	)
"
PERL_RM_FILES=(
	t/90podtest.t
	t/91podcover.t
	t/94metatest.t
	t/95changedate.t
	t/96metatest.t
)

src_prepare() {
	if has 'network-test' ${USER_PERL_RESTRICT}; then
		einfo "Will skip t/04live.t: USER_PERL_RESTRICT=network-test"
		PERL_RM_FILES+=( t/04live.t )
	fi
	perl-module_src_prepare
}
