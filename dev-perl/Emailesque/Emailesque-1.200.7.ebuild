# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=AWNCORP
MODULE_VERSION=1.200007
inherit perl-module

DESCRIPTION='Lightweight To-The-Point Email'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_runtime() {
	# Authen::SASL
	echo dev-perl/Authen-SASL
	# Email::AddressParser
	echo dev-perl/Email-AddressParser
	# Email::Stuffer
	echo dev-perl/Email-Stuffer
	# File::Slurp
	echo dev-perl/File-Slurp
	# Hash::Merge 0.12 ( 0.120.0 )
	echo \>=dev-perl/Hash-Merge-0.120.0
	# IO::Socket::SSL
	echo dev-perl/IO-Socket-SSL
	# Net::SMTP::SSL
	echo dev-perl/Net-SMTP-SSL
	# Net::SMTP::TLS
	echo dev-perl/Net-SMTP-TLS
	# Net::SSLeay
	echo dev-perl/Net-SSLeay
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
