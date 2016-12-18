# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=BINGOS
MODULE_VERSION=1.20
inherit perl-module

DESCRIPTION="Syslog services for POE"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
# IO::Socket, IO::Socket::iINET -> IO
# POE::Driver::SysRW, POE::Wheel::ReadWrite, POE::Wheel::SocketFactory -> POE
RDEPEND="
	virtual/perl-Carp
	virtual/perl-IO
	>=dev-perl/POE-0.240.0
	dev-perl/Params-Validate
	dev-perl/Time-ParseDate
	>=dev-lang/perl-5.6.1
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? ( >=virtual/perl-Test-Simple-0.470.0 )"

src_test() {
	local bad;
	bad=(
		t/99_pod.t
		t/99_pod_coverage.t
	)
	# These tests should pass in a good network environment
	# Set: USER_PERL_RESTRICT="network-test"
	# if you have a bad/closed network
	if has "network-test" "${USER_PERL_RESTRICT}"; then
		einfo "Omitting Network tests"
		bad+=( t/02-udp.t t/03-tcp.t  t/04-main-udp.t t/05-main-tcp.t )
	fi
	perl_rm_files "${bad[@]}"
	perl-module_src_test
}
