# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=DANDV
inherit perl-module

DESCRIPTION="iA Catalyst & DBIx::Class powered Wiki."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="autodeploy markdown docbook tocgen podformatter syntaxhighlight \
transclusion amazonboxes rssformatter emoticons test"

RDEPEND="
	>=dev-perl/Algorithm-Diff-1.1901
	dev-perl/Algorithm-Merge
	dev-perl/Algorithm-IncludeExclude
	>=dev-perl/Archive-Zip-1.14
	>=dev-perl/MRO-Compat-0.10
	>=dev-perl/Cache-FastMmap-1.29
	>=dev-perl/Catalyst-Runtime-5.7001
	>=dev-perl/Catalyst-Action-RenderView-0.07
	>=dev-perl/Catalyst-Authentication-Store-DBIx-Class-0.101
	>=dev-perl/Catalyst-Controller-HTML-FormFu-0.03007
	>=dev-perl/Catalyst-Model-DBIC-Schema-0.01
	>=dev-perl/Catalyst-Plugin-Authentication-0.10005
	dev-perl/Catalyst-Plugin-Cache
	>=dev-perl/Catalyst-Plugin-ConfigLoader-0.13
	dev-perl/Catalyst-Plugin-I18N
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	dev-perl/Catalyst-Plugin-Session-Store-Cache
	dev-perl/Catalyst-Plugin-Setenv
	>=dev-perl/Catalyst-Plugin-Static-Simple-0.07
	>=dev-perl/Catalyst-Plugin-SubRequest-0.13
	>=dev-perl/Catalyst-Plugin-Unicode-0.8
	>=dev-perl/Catalyst-View-TT-0.23
	dev-perl/Catalyst-View-JSON
	dev-perl/Catalyst-View-Email
	dev-perl/Config-JFDI
	>=dev-perl/crypt-cbc-2.12
	dev-perl/Cache
	dev-perl/config-general
	dev-perl/Data-FormValidator-Constraints-DateTime
	>=dev-perl/Data-Page-2.00
	>=dev-perl/DateTime-0.28
	dev-perl/DateTime-Format-Mail
	>=dev-perl/DBD-SQLite-1.08
	>=dev-perl/DBIx-Class-0.08
	dev-perl/DBIx-Class-DateTime-Epoch
	dev-perl/DBIx-Class-EncodedColumn
	>=virtual/perl-Encode-2.31
	dev-perl/File-Copy-Recursive
	>=dev-perl/File-MMagic-1.27
	>=dev-perl/File-Slurp-9999.13
	>=dev-perl/HTML-Parser-3.60
	>=dev-perl/HTML-FormFu-0.02000
	dev-perl/HTML-FormFu-Model-DBIC
	>=dev-perl/HTML-Strip-1.04
	dev-perl/HTML-Defang
	dev-perl/HTML-TagCloud
	media-libs/exiftool
	dev-perl/Imager
	dev-perl/Image-Math-Constrain
	>=virtual/perl-IO-1.14
	>=dev-perl/KinoSearch-0.165
	>=dev-perl/Module-Pluggable-Ordered-1.4
	dev-perl/Moose
	dev-perl/Number-Format
	virtual/perl-parent
	dev-perl/String-Diff
	dev-perl/Template-Toolkit
	dev-perl/Template-Plugin-JavaScript
	>=dev-perl/Text-Context-3.5
	dev-perl/Text-Password-Pronounceable
	>=dev-perl/URI-1.37
	>=dev-perl/yaml-0.36
	dev-perl/Text-Textile
	dev-perl/Term-Prompt
	autodeploy? (
		dev-perl/SQL-Translator
	)
	markdown? (
		>=dev-perl/Text-Markdown-1.0.17
	)
	docbook? (
		>=dev-perl/XML-LibXSLT-1.66
		>=dev-perl/XML-LibXML-1.66
	)
	tocgen? (
		>=dev-perl/HTML-Toc-1.10
	)
	podformatter? (
		>=virtual/perl-Pod-Simple-3.01
	)
	syntaxhighlight? (
		dev-perl/Syntax-Highlight-Engine-Kate
	)
	transclusion? (
		dev-perl/libwww-perl
		dev-perl/URI-Fetch
	)
	amazonboxes? (
		dev-perl/Net-Amazon
	)
	rssformatter? (
		dev-perl/XML-Feed
	)
	emoticons? (
		dev-perl/Text-Emoticon-MSN
	)
"
DEPEND="
	test? (
		>=virtual/perl-Test-Simple-0.88
		dev-perl/Email-Send
		>=dev-perl/WWW-Mechanize-1.54
		>=dev-perl/Test-WWW-Mechanize-Catalyst-0.51
	)
	${RDEPEND}
"

SRC_TEST=do
