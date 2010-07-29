# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-editors/padre/padre-0.63.ebuild,v 1.1 2010/06/02 15:04:23 tove Exp $

EAPI=3

MY_PN=Padre
MY_P=${MY_PN}-${PV}
#MODULE_AUTHOR=SZABGAB
MODULE_AUTHOR=PLAVEN
S=${WORKDIR}/${MY_P}
inherit perl-module

DESCRIPTION="Perl Application Development and Refactoring Environment"
HOMEPAGE="http://padre.perlide.org/"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Test Deps
TDEPEND="
	>=dev-perl/Capture-Tiny-0.06
	>=dev-perl/Test-MockObject-1.09
	>=dev-perl/Test-Script-1.07
	>=dev-perl/Test-Exception-0.27
	>=dev-perl/Test-NoWarnings-0.084
	>=virtual/perl-Test-Simple-0.88
"

# Depend on perl-5.10.1 but it only needs
# a modern EU::MM
#	>=virtual/perl-Pod-Perldoc-3.15
RDEPEND="
	>=dev-lang/perl-5.10.1
	>=sys-apps/ack-1.86
	>=dev-perl/Class-Adapter-1.05
	>=dev-perl/Class-Unload-0.03
	>=dev-perl/Class-XSAccessor-1.05
	>=dev-perl/DBD-SQLite-1.27
	>=dev-perl/DBI-1.58
	>=dev-perl/Devel-Dumpvar-0.04
	>=dev-perl/Debug-Client-0.11
	>=dev-perl/Devel-Refactor-0.05
	virtual/perl-Digest-MD5
	>=dev-perl/File-Copy-Recursive-0.37
	>=dev-perl/File-Find-Rule-0.30
	>=dev-perl/File-HomeDir-0.91
	>=dev-perl/File-Next-1.06
	>=virtual/perl-File-Path-2.07
	>=dev-perl/File-Remove-1.42
	>=dev-perl/File-ShareDir-1.00
	>=virtual/perl-File-Spec-3.27.01
	>=dev-perl/File-Which-1.08
	dev-perl/File-pushd
	>=dev-perl/Format-Human-Bytes-0.04
	virtual/perl-Getopt-Long
	>=dev-perl/HTML-Parser-3.58
	>=dev-perl/IO-stringy-2.110
	virtual/perl-IO
	>=dev-perl/IO-String-1.08
	>=virtual/perl-Scalar-List-Utils-1.18
	>=dev-perl/libwww-perl-5.815
	>=dev-perl/List-MoreUtils-0.22
	>=dev-perl/Locale-Msgfmt-0.14
	>=dev-perl/Module-Manifest-0.07
	>=dev-perl/Module-Refresh-0.13
	>=dev-perl/Module-Starter-1.50
	>=dev-perl/ORLite-1.41
	>=dev-perl/PAR-0.989
	>=dev-perl/Params-Util-0.33
	>=dev-perl/Parse-ErrorString-Perl-0.11
	>=dev-perl/Parse-ExuberantCTags-1.00
	>=dev-perl/Pod-Abstract-0.16
	>=dev-perl/Pod-POM-0.17
	>=virtual/perl-Pod-Simple-3.07
	>=dev-perl/PPI-1.205
	>=dev-perl/PPIx-EditorTools-0.09
	>=dev-perl/PPIx-Regexp-0.005
	dev-perl/Probe-Perl
	>=dev-perl/Readonly-XS-1.05
	>=virtual/perl-Storable-2.15
	>=dev-perl/Template-Tiny-0.11
	>=virtual/perl-Text-Balanced-0.80
	>=dev-perl/Text-Diff-0.35
	>=dev-perl/Text-FindIndent-0.06
	>=virtual/perl-threads-1.71
	>=virtual/perl-threads-shared-1.26
	>=dev-perl/Thread-Queue-2.11
	>=dev-perl/URI-0
	>=dev-perl/wxperl-0.91
	>=dev-perl/Wx-Perl-ProcessStream-0.25
	>=dev-perl/YAML-Tiny-1.32
	>=virtual/perl-version-0.79
"
DEPEND="${RDEPEND}"
#	test? (
#		${TDEPEND}
#	)
#"

#SRC_TEST=do

src_configure() {
	unset DISPLAY
	perl-module_src_configure
}
