# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=LYOKATO
MODULE_VERSION=0.29
inherit perl-module

DESCRIPTION='validation with simple chains of constraints '

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_runtime() {
	# Class::Accessor 0.22 ( 0.220.0 )
	echo \>=dev-perl/Class-Accessor-0.220.0
	# Class::Data::Accessor 0.03 ( 0.30.0 )
	echo \>=dev-perl/Class-Data-Accessor-0.30.0
	# Class::Data::Inheritable 0.04 ( 0.40.0 )
	echo \>=dev-perl/Class-Data-Inheritable-0.40.0
	# Class::Inspector 1.13 ( 1.130.0 )
	echo \>=dev-perl/Class-Inspector-1.130.0
	# Date::Calc 5.4 ( 5.400.0 )
	echo \>=dev-perl/Date-Calc-5.400.0
	# DateTime::Format::Strptime 1.07 ( 1.70.0 )
	echo \>=dev-perl/DateTime-Format-Strptime-1.70.0
	# Email::Valid 0.15 ( 0.150.0 )
	echo \>=dev-perl/Email-Valid-0.150
	# Email::Valid::Loose 0.04 ( 0.40.0 )
	echo \>=dev-perl/Email-Valid-Loose-0.40.0
	# List::MoreUtils 0.16 ( 0.160.0 )
	echo \>=dev-perl/List-MoreUtils-0.16
	# Mail::Address
	echo dev-perl/MailTools
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Tie::IxHash 1.21 ( 1.210.0 )
	echo \>=dev-perl/Tie-IxHash-1.210.0
	# UNIVERSAL::require 0.1 ( 0.100.0 )
	echo \>=dev-perl/UNIVERSAL-require-0.100.0
	# YAML 0.39 ( 0.390.0 )
	echo \>=dev-perl/YAML-0.390.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
