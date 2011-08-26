# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=PERLER
MODULE_VERSION=0.09004
inherit perl-module

DESCRIPTION="HTML Form Creation, Rendering and Validation Framework"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true;}
COMMON_DEPEND="
	$(comment Exporter 5.570.0)
	>=dev-perl/Captcha-reCAPTCHA-0.930.0
	dev-perl/Class-Accessor-Chained $(comment Class::Accessor::Chained::Fast)
	>=dev-perl/Clone-0.31 $(comment 0.310.0)
	$(comment Class::MOP::Method)
	>=dev-perl/Config-Any-0.18 $(comment 0.180.0)
	dev-perl/crypt-cbc $(comment Crypt::CBC)
	dev-perl/Crypt-DES
	>=dev-perl/Data-Visitor-0.26 $(comment 0.260.0)
	dev-perl/Date-Calc
	>=dev-perl/DateTime-0.54 $(comment 0.540.0)
	>=dev-perl/DateTime-Format-Strptime-1.200.0
	>=dev-perl/DateTime-Format-Builder-0.79.01 $(comment 0.790.100)
	dev-perl/DateTime-Format-Natural
	>=dev-perl/DateTime-Locale-0.45 $(comment 0.450.0)
	dev-perl/Email-Valid
	dev-perl/File-ShareDir
	dev-perl/Hash-Flatten
	dev-perl/HTML-Scrubber
	>=dev-perl/HTML-TokeParser-Simple-3.14 $(comment 3.140.0)
	|| ( >=dev-perl/HTTP-Message-1.640.0 >=dev-perl/libwww-perl-1.640.0 ) $(comment HTTP::Headers 1.640.0)
	virtual/perl-IO $(comment IO::File)
	virtual/perl-Scalar-List-Utils $(comment List::Util)
	dev-perl/List-MoreUtils
	virtual/perl-locale-maketext
	virtual/perl-Module-Pluggable
	>=dev-perl/Moose-1.0.0
	$(comment Moose::Meta::Attribute::Custom::Trait::Chained is MX::ChainedAccessors)
	dev-perl/MooseX-Aliases
	>=dev-perl/MooseX-ChainedAccessors-0.20.0
	dev-perl/MooseX-SetOnce
	dev-perl/Number-Format
	dev-perl/Readonly
	dev-perl/regexp-common
	dev-perl/Path-Class $(comment Path::Class::File)
	$(comment Task::Weaken)
	dev-perl/Template-Toolkit $(comment Template)
	>=dev-perl/YAML-LibYAML-0.320.0 $(comment YAML::XS)
"
RDEPEND="${COMMON_DEPEND}"
DEPEND="
	${COMMON_DEPEND}
	test? (
		virtual/perl-CGI
		$(comment TODO Test::Aggregate support)
		>=virtual/perl-Test-Simple-0.92 $(comment Test::More 0.920.0)
	)
"
pkg_pretend() {
	if has_version "<=dev-perl/HTML-FormFu-0.90.0"; then
		eerror "Sorry, in order to upgrade to HTML-FormFu 0.90.0 or greater you"
		eerror "need to first remove older versions."
		die "Installation requirements not met"
	fi
}
SRC_TEST=do
