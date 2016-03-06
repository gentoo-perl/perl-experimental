# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=1.017
inherit perl-module

DESCRIPTION='BeLike::RJBS when you build your dists'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_runtime() {
	# Dist::Zilla 4.300036 ( 4.300.36 )
	echo \>=dev-perl/Dist-Zilla-4.300.36
	# Dist::Zilla::Plugin::AutoPrereq 1.100130 ( 1.100.130 )
	echo \>=dev-perl/Dist-Zilla-1.100.130
	# Dist::Zilla::Plugin::CheckExtraTests
	echo dev-perl/Dist-Zilla-Plugin-CheckExtraTests
	# Dist::Zilla::Plugin::CheckPrereqsIndexed
	echo dev-perl/Dist-Zilla-Plugin-CheckPrereqsIndexed
	# Dist::Zilla::Plugin::GithubMeta 0.12 ( 0.120.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-GithubMeta-0.120.0
	# Dist::Zilla::Plugin::PodWeaver 3.092971 ( 3.92.971 )
	echo \>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.92.971
	# Dist::Zilla::Plugin::ReportVersions::Tiny
	echo dev-perl/Dist-Zilla-Plugin-ReportVersions-Tiny
	# Dist::Zilla::Plugin::TaskWeaver 0.093330 ( 0.93.330 )
	echo \>=dev-perl/Dist-Zilla-Plugin-TaskWeaver-0.93.330
	# Dist::Zilla::Plugin::Test::ChangesHasContent
	echo dev-perl/Dist-Zilla-Plugin-CheckChangesHasContent
	# Dist::Zilla::Plugin::Test::Compile
	echo dev-perl/Dist-Zilla-Plugin-Test-Compile
	# Dist::Zilla::PluginBundle::Basic
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::PluginBundle::Filter
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::PluginBundle::Git
	echo dev-perl/Dist-Zilla-Plugin-Git
	# Dist::Zilla::Role::PluginBundle::Easy
	echo dev-perl/Dist-Zilla
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# Pod::Elemental 0.092970 ( 0.92.970 )
	echo \>=dev-perl/Pod-Elemental-0.92.970
	# Pod::Elemental::Transformer::List
	echo dev-perl/Pod-Elemental-Transformer-List
	# Pod::Weaver 3.100310 ( 3.100.310 )
	echo \>=dev-perl/Pod-Weaver-3.100.310
	# Pod::Weaver::Config::Assembler
	echo dev-perl/Pod-Weaver
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
perl_meta_test() {
	# File::Spec
	echo virtual/perl-File-Spec
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	# echo dev-lang/perl
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
