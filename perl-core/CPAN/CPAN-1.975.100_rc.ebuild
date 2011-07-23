# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="ANDK"
MODULE_VERSION="1.97_51"
inherit perl-module

DESCRIPTION="query, download and build perl modules from CPAN sites"

SLOT="0"
KEYWORDS=""
IUSE="readline -interesting"

PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/0001-Apply-1.94-Makefile.patch.patch"
	"${FILESDIR}/${MODULE_VERSION}/0002-Apply-part-of-1.94-SignatureTest.patch.patch"
)
RDEPEND="
	>=dev-lang/perl-5.8.8-r8
	virtual/perl-ExtUtils-MakeMaker
	virtual/perl-File-Path
	dev-perl/YAML-Syck
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	virtual/perl-Scalar-List-Utils
	>=virtual/perl-Test-Harness-2.62
	>=virtual/perl-Test-Simple-0.62

	|| (
		dev-perl/libwww-perl
		>=virtual/perl-HTTP-Tiny-0.5.0
	)

	interesting? (
		virtual/perl-MIME-Base64
		virtual/perl-Digest-MD5
		virtual/perl-Archive-Tar
		virtual/perl-HTTP-Tiny
		dev-perl/Archive-Zip
		dev-perl/Compress-Bzip2
		virtual/perl-IO-Compress
		dev-perl/CPAN-Checksums
		virtual/perl-Digest-SHA
		virtual/perl-ExtUtils-CBuilder
		dev-perl/File-HomeDir
		dev-perl/File-Which
		virtual/perl-IO-Zlib
		dev-perl/libwww-perl
		virtual/perl-Module-Build
		dev-perl/Module-Signature
		virtual/perl-libnet
		virtual/perl-Parse-CPAN-Meta
		dev-perl/TermReadKey
		virtual/perl-Test-Simple
		dev-perl/Text-Glob
		virtual/perl-Text-Tabs+Wrap
		dev-perl/yaml
		dev-perl/YAML-LibYAML
	)
	readline? (
		|| (
			dev-perl/Term-ReadLine-Perl
			dev-perl/Term-ReadLine-Gnu
		)
	)
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
