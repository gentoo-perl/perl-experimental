# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=1.003
inherit perl-module

DESCRIPTION="Authen::Htpasswd based user storage/authentication."

IUSE="test"

SLOT="0"
KEYWORDS="~amd64 ~x86"

PERL_RM_FILES=(
	t/pod.t
	t/kwalitee.t
	t/pod-coverage.t
)

# Class::Accessor::Fast -> Class-Accessor
RDEPEND="
	>=dev-perl/Catalyst-Plugin-Authentication-0.100.60
	>=dev-perl/Authen-Htpasswd-0.130.0
	dev-perl/Class-Accessor
	dev-perl/Crypt-PasswdMD5"
DEPEND="$RDEPEND
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/Test-WWW-Mechanize-Catalyst
		>=virtual/perl-Test-Simple-1.1.10
	)"
