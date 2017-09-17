# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=CFRANKS
MODULE_VERSION=2.01
inherit perl-module

DESCRIPTION='HTML Form Creation, Rendering and Validation Framework'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/gh-25-cgiwarns.patch"
)
# Class::MOP::Method -> Moose
# Cwd -> File-Spec
# Data::Visitor::Callback -> Data-Visitor
# Fatal -> autodie
# File::Copy -> perl
# File::Find -> perl
# HTTP::Headers -> HTTP-Message
# IO::File -> IO
# List::Util -> Scalar-List-Utils
# Moose::Role -> Moose
# Moose::Util -> Moose
# POSIX -> perl
# Path::Class::File -> Path-Class
# Scalar::Util -> Scalar-List-Utils
# YAML::XS -> YAML-LibYAML
RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Clone-0.310.0
	>=dev-perl/Config-Any-0.180.0
	>=dev-perl/Data-Visitor-0.260.0
	>=dev-perl/DateTime-0.540.0
	>=dev-perl/DateTime-Format-Builder-0.790.100
	dev-perl/DateTime-Format-Natural
	>=dev-perl/DateTime-Format-Strptime-1.200.0
	>=dev-perl/DateTime-Locale-0.450.0
	dev-perl/Email-Valid
	virtual/perl-Encode
	>=virtual/perl-Exporter-5.570.0
	dev-perl/File-ShareDir
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	dev-perl/HTML-Scrubber
	>=dev-perl/HTML-TokeParser-Simple-3.140.0
	>=dev-perl/HTTP-Message-1.640.0
	dev-perl/Hash-Flatten
	virtual/perl-IO
	dev-perl/List-MoreUtils
	virtual/perl-Locale-Maketext
	dev-perl/Module-Pluggable
	>=dev-perl/Moose-1.0.0
	dev-perl/MooseX-Aliases
	dev-perl/Number-Format
	dev-perl/Path-Class
	dev-perl/Readonly
	virtual/perl-Scalar-List-Utils
	virtual/perl-Storable
	dev-perl/Task-Weaken
	>=dev-perl/YAML-LibYAML-0.320.0
	virtual/perl-autodie
	dev-perl/Regexp-Common
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	>=dev-perl/File-ShareDir-Install-0.30.0
	test? (
		>=dev-perl/CGI-3.370.0
		>=dev-perl/Test-Aggregate-0.371.0
		dev-perl/Test-Exception
		>=virtual/perl-Test-Simple-0.920.0
	)
"
pkg_pretend() {
	if has_version "<=dev-perl/HTML-FormFu-0.90.0"; then
		eerror "Sorry, in order to upgrade to HTML-FormFu 0.90.0 or greater you"
		eerror "need to first remove older versions."
		die "Installation requirements not met"
	fi
}
