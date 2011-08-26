# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SRI
MODULE_VERSION=1.92
inherit perl-module

DESCRIPTION="The Box!"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-B)
	$(comment virtual/perl-Carp)
	virtual/perl-File-Spec $(comment Cwd.pm)
	$(comment virtual/perl-Config)
	$(comment virtual/perl-Data-Dumper)
	virtual/perl-Digest-MD5
	virtual/perl-Encode
	$(comment virtual/perl-Errno)
	$(comment virtual/perl-Exporter)
	virtual/perl-ExtUtils-MakeMaker
	$(comment virtual/perl-Fcntl)
	$(comment virtual/perl-File-Basename)
	$(comment virtual/perl-File-Copy)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Path
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	$(comment virtual/perl-FindBin)
	virtual/perl-Getopt-Long
	virtual/perl-i18n-langtags
	virtual/perl-i18n-langtags $(comment I18N::LangTags::Detect)
	virtual/perl-IO $(comment IO::File)
	virtual/perl-IO $(comment IO::Poll)
	virtual/perl-IO $(comment IO::Socket)
	virtual/perl-IO $(comment IO::Socket::INET)
	virtual/perl-Scalar-List-Utils $(comment List::Util)
	virtual/perl-locale-maketext
	virtual/perl-MIME-Base64
	virtual/perl-MIME-Base64 $(comment MIME::QuotedPrint)
	$(comment virtual/perl-POSIX)
	virtual/perl-Scalar-List-Utils $(comment Scalar::Util)
	$(comment virtual/perl-Socket)
	$(comment virtual/perl-Sys-Hostname)
	virtual/perl-Test-Harness
	virtual/perl-Test-Simple $(comment Test::More)
	virtual/perl-Time-HiRes
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
