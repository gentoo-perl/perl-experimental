# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=CFRANKS
inherit perl-module

DESCRIPTION="HTML Form Creation, Rendering and Validation Framework"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Captcha-reCAPTCHA-0.92
	dev-perl/Class-Accessor-Chained
	dev-perl/Class-C3
	>=dev-perl/Config-Any-0.10
	dev-perl/crypt-cbc
	dev-perl/Crypt-DES
	>=dev-perl/Data-Visitor-0.23
	dev-perl/Date-Calc
	>=dev-perl/DateTime-0.38
	>=dev-perl/DateTime-Format-Builder-0.7901
	dev-perl/DateTime-Format-Natural
	dev-perl/DateTime-Format-Strptime
	dev-perl/DateTime-Locale
	dev-perl/Email-Valid
	dev-perl/File-ShareDir
	dev-perl/Hash-Flatten
	dev-perl/HTML-Scrubber
	dev-perl/HTML-TokeParser-Simple
	dev-perl/libwww-perl
	dev-perl/List-MoreUtils
	virtual/perl-Locale-Maketext-Simple
	virtual/perl-Module-Pluggable
	dev-perl/Number-Format
	dev-perl/Readonly
	dev-perl/Regexp-Copy
	dev-perl/regexp-common
	>=dev-perl/YAML-Syck-1.04
	dev-perl/Template-Toolkit
"
RDEPEND="${COMMON_DEPEND}"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-NoWarnings
		>=virtual/perl-Test-Simple-0.92
	)
"

SRC_TEST=do
