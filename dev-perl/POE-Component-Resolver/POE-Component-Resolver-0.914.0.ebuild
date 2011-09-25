# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RCAPUTO
MODULE_VERSION=0.914
inherit perl-module

DESCRIPTION="A non-blocking getaddrinfo() resolver"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_eumm_configure() {
	# strict

	# warnings

	# ExtUtils::MakeMaker 6.56
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.56
}
perl_eumm_prereq_pm() {
	# POE 1.311
	echo \>=dev-perl/POE-1.311.0
	# Scalar::Util 1.23
	echo \>=virtual/perl-Scalar-List-Utils-1.23
	# Socket::GetAddrInfo 0.19
	echo \>=dev-perl/Socket-GetAddrInfo-0.190.0
	# Storable 2.18
	echo \>=virtual/perl-Storable-2.18
	# Test::More 0.96
	echo \>=virtual/perl-Test-Simple-0.96
	# Time::HiRes 1.9711
	echo \>=virtual/perl-Time-HiRes-1.97.11
}
RDEPEND="$(perl_eumm_prereq_pm)"
DEPEND="$(perl_eumm_configure)
		$(perl_eumm_prereq_pm)"

SRC_TEST="network"
