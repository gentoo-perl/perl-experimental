# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MRAMBERG
MODULE_VERSION="1.02"
inherit perl-module

DESCRIPTION="A Catalyst & DBIx::Class powered Wiki."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="createdb markdown docbook podformatter syntaxhighlight \
transclusion amazonboxes rssformatter emoticons test recaptcha fastcgi"

RDEPEND="
	>=dev-perl/Algorithm-Diff-1.190.100
	dev-perl/Algorithm-Merge
	>=dev-perl/Archive-Zip-1.14
	>=dev-perl/MRO-Compat-0.10
	>=dev-perl/Cache-FastMmap-1.290.0
	>=dev-perl/Catalyst-Runtime-5.700.100
	>=dev-perl/Catalyst-Action-RenderView-0.07
	>=dev-perl/Catalyst-Authentication-Store-DBIx-Class-0.101
	>=dev-perl/Catalyst-Controller-HTML-FormFu-0.30.70
	>=dev-perl/Catalyst-Model-DBIC-Schema-0.10
	>=dev-perl/Catalyst-Plugin-Authentication-0.100.50
	dev-perl/Catalyst-Plugin-Cache
	>=dev-perl/Catalyst-Plugin-ConfigLoader-0.13
	dev-perl/Catalyst-Plugin-I18N
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	dev-perl/Catalyst-Plugin-Session-Store-Cache
	dev-perl/Catalyst-Plugin-Setenv
	>=dev-perl/Catalyst-Plugin-Static-Simple-0.07
	>=dev-perl/Catalyst-Plugin-SubRequest-0.150.0
	>=dev-perl/Catalyst-Plugin-Unicode-0.8
	>=dev-perl/Catalyst-View-TT-0.23
	>=dev-perl/Catalyst-View-JSON-0.260.0
	>=dev-perl/Catalyst-View-Email-0.14
	dev-perl/Config-JFDI
	>=dev-perl/crypt-cbc-2.12
	dev-perl/Cache
	dev-perl/config-general
	>=dev-perl/Data-Page-2.00
	>=dev-perl/DateTime-0.28
	dev-perl/DateTime-Format-Mail
	>=dev-perl/Directory-Scratch-0.14
	>=dev-perl/DBD-SQLite-1.27
	>=dev-perl/DBIx-Class-0.08
	dev-perl/DBIx-Class-DateTime-Epoch
	dev-perl/DBIx-Class-EncodedColumn
	>=virtual/perl-Encode-2.31
	dev-perl/File-Copy-Recursive
	>=dev-perl/File-MMagic-1.27
	>=dev-perl/HTML-Parser-3.60
	>=dev-perl/HTML-FormFu-0.20.0
	dev-perl/HTML-FormFu-Model-DBIC
	>=dev-perl/HTML-Strip-1.04
	dev-perl/HTML-Defang
	dev-perl/HTML-TagCloud
	dev-perl/HTML-Toc
	media-libs/exiftool
	dev-perl/Imager
	dev-perl/Image-Math-Constrain
	>=virtual/perl-IO-1.14
	>=dev-perl/KinoSearch1-1.0.0
	>=dev-perl/Module-Pluggable-Ordered-1.4
	dev-perl/Moose
	dev-perl/Number-Format
	virtual/perl-parent
	dev-perl/Template-Toolkit
	dev-perl/Template-Plugin-JavaScript
	>=dev-perl/Text-Context-3.5
	dev-perl/Text-Password-Pronounceable
	>=dev-perl/URI-1.37
	dev-perl/URI-Find
	>=dev-perl/yaml-0.36
	dev-perl/Text-Textile
	dev-perl/Term-Prompt
	>=dev-perl/Text-MultiMarkdown-1.0.32

	createdb? (
		dev-perl/SQL-Translator
	)
	recaptcha? (
		>=dev-perl/HTML-FormFu-0.30.40
	)
	syntaxhighlight? (
		dev-perl/Syntax-Highlight-Engine-Kate
	)
	rssformatter? (
		dev-perl/XML-Feed
	)

	docbook? (
		>=dev-perl/XML-LibXSLT-1.66
		>=dev-perl/XML-LibXML-1.66
	)

	podformatter? (
		>=virtual/perl-Pod-Simple-3.01
	)
	transclusion? (
		dev-perl/libwww-perl
		dev-perl/URI-Fetch
	)
	amazonboxes? (
		dev-perl/Net-Amazon
	)
	emoticons? (
		dev-perl/Text-Emoticon-MSN
	)
	fastcgi? (
		dev-perl/FCGI-ProcManager
	)
"
DEPEND="
	test? (
		>=virtual/perl-Test-Simple-0.88
		dev-perl/Test-Differences
		>=dev-perl/SQL-Translator-0.90.6
		>=dev-perl/Email-Sender-0.100.110
		>=dev-perl/WWW-Mechanize-1.54
		>=dev-perl/Test-WWW-Mechanize-Catalyst-0.51
		>=dev-perl/WWW-Mechanize-TreeBuilder-1.100
	)
	${RDEPEND}
"
SRC_TEST=do
