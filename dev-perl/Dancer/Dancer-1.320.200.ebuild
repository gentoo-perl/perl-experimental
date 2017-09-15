# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=BIGPRESH
MODULE_VERSION=1.3202
inherit perl-module

DESCRIPTION="lightweight yet powerful web application framework"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	virtual/perl-Carp
	virtual/perl-Data-Dumper
	virtual/perl-Encode
	virtual/perl-Exporter
	virtual/perl-File-Path
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	virtual/perl-Getopt-Long
	dev-perl/HTTP-Body
	dev-perl/HTTP-Date
	dev-perl/HTTP-Message
	dev-perl/HTTP-Server-Simple-PSGI
	dev-perl/Hash-Merge-Simple
	virtual/perl-IO
	dev-perl/libwww-perl
	dev-perl/MIME-Types
	dev-perl/Module-Runtime
	virtual/perl-Pod-Usage
	virtual/perl-Scalar-List-Utils
	virtual/perl-Test-Simple
	virtual/perl-Time-HiRes
	dev-perl/Try-Tiny
	dev-perl/URI
	virtual/perl-constant
	virtual/perl-parent
"

DEPEND="
	${RDEPEND}
	dev-perl/Devel-Hide
	virtual/perl-Digest-MD5
	virtual/perl-ExtUtils-MakeMaker
	dev-perl/HTTP-Cookies
	dev-perl/Plack
	dev-perl/Test-NoWarnings
"
