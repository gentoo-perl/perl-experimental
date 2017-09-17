# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=MRAMBERG
MODULE_VERSION=1.11
inherit perl-module

DESCRIPTION='A Wiki with a tree'
#RESTRICT=test # HTML eq testing is stupid
SLOT="0"
KEYWORDS="~amd64"
IUSE="test createdb fastcgi recaptcha syntaxhighlight rssformatter docbook podformatter transclusion amazonboxes"
PERL_RESTRICT="parallel-test"
PERL_RM_FILES=(
	t/02pod.t				   # Authortest
	t/app_leak.t			   # Fragile memory leak test
	t/03podcoverage.t 		   # Authortest
	t/notabs.t				   # Authortest
	t/formatter_all_markdown.t # Does stupid HTML == testing
	t/formatter_file.t         # more
	t/unicode.t                # Test is broken
#	t/schema_DBIC.t			   # possible parallelisim problem
#	t/permissions.t            # more db problems
	t/formatter_amazon.t 	   # API key required
)
# Email::Sender::Simple -> Email-Sender
# Catalyst::Plugin::Unicode -> Catalyst-Runtime 5.900.420
# Catalyst::View::Email::Template -> Catalyst-View-Email
# HTML::Entities -> HTML-Parser
# Image::ExifTool -> exiftool
# IO::Scalar -> IO-stringy
# IO::File  -> IO
# Template -> Template-Toolkit
# YAML -> yaml
# Pod::Simple::HTML -> Pod-Simple
# LWP::Simple -> libwww-perl
RDEPEND="
	>=dev-perl/Plack-0.997.400
	>=dev-perl/Algorithm-Diff-1.190.100
	dev-perl/Algorithm-Merge
	>=dev-perl/Archive-Zip-1.140.0
	>=dev-perl/Cache-FastMmap-1.310.0
	>=dev-perl/Catalyst-Runtime-5.900.150
	>=dev-perl/Catalyst-Action-RenderView-0.70.0
	>=dev-perl/Catalyst-Authentication-Store-DBIx-Class-0.101.0
	>=dev-perl/Catalyst-Controller-HTML-FormFu-0.30.70
	>=dev-perl/Catalyst-Model-DBIC-Schema-0.10.0
	>=dev-perl/Catalyst-Plugin-Authentication-0.100.50
	>=dev-perl/Catalyst-Plugin-Cache-0.80.0
	>=dev-perl/Catalyst-Plugin-ConfigLoader-0.130.0
	dev-perl/Catalyst-Plugin-I18N
	>=dev-perl/Catalyst-Plugin-SubRequest-0.190.0
	>=dev-perl/Catalyst-Plugin-Session-State-Cookie-0.110.0
	dev-perl/Catalyst-Plugin-Session-Store-Cache
	dev-perl/Catalyst-Plugin-Setenv
	>=dev-perl/Catalyst-Plugin-Static-Simple-0.70.0
	>=dev-perl/Catalyst-View-TT-0.230.0
	>=dev-perl/Catalyst-View-JSON-0.260.0
	>=dev-perl/Catalyst-View-Email-0.140.0
	dev-perl/Config-General
	dev-perl/Config-JFDI
	>=dev-perl/Crypt-CBC-2.120.0
	>=dev-perl/Data-Page-2.0.0
	>=dev-perl/DateTime-0.280.0
	dev-perl/DateTime-Format-Mail
	>=dev-perl/DBD-SQLite-1.270.0
	>=dev-perl/DBIx-Class-0.80.0
	>=dev-perl/DBIx-Class-DateTime-Epoch-0.40.0
	dev-perl/DBIx-Class-EncodedColumn
	>=dev-perl/DBIx-Class-TimeStamp-0.110.0
	>=dev-perl/Directory-Scratch-0.140.0
	>=virtual/perl-Encode-2.310.0
	dev-perl/File-Copy-Recursive
	>=dev-perl/File-MMagic-1.270.0
	>=dev-perl/HTML-Parser-3.600.0
	>=dev-perl/HTML-FormFu-0.20.0
	dev-perl/HTML-FormFu-Model-DBIC
	>=dev-perl/HTML-Strip-1.40.0
	dev-perl/HTML-TagCloud
	dev-perl/HTML-Toc
	media-libs/exiftool
	dev-perl/Imager
	dev-perl/Image-Math-Constrain
	>=virtual/perl-IO-1.14
	dev-perl/IO-stringy
	>=dev-perl/KinoSearch1-1.0.0
	>=dev-perl/Module-Pluggable-Ordered-1.400.0
	dev-perl/Moose
	>=dev-perl/MRO-Compat-0.100.0
	dev-perl/Number-Format
	virtual/perl-parent
	>=dev-perl/Template-Toolkit-2.200.0
	dev-perl/Template-Plugin-JavaScript
	>=dev-perl/Text-Context-3.500.0
	>=dev-perl/Text-MultiMarkdown-1.0.32
	dev-perl/Text-Password-Pronounceable
	dev-perl/Text-Textile
	>=dev-perl/URI-1.370.0
	dev-perl/URI-Find
	>=dev-perl/YAML-0.360.0
	dev-perl/Term-Prompt
	dev-perl/Text-Emoticon-MSN

	createdb? (
		>=dev-perl/SQL-Translator-0.90.60
	)
	fastcgi? (
		dev-perl/FCGI-ProcManager
	)
	recaptcha? (
		dev-perl/HTML-FormFu-Element-reCAPTCHA
	)
	syntaxhighlight? (
		dev-perl/Syntax-Highlight-Engine-Kate
	)
	rssformatter? (
		dev-perl/XML-Feed
	)
	docbook? (
		>=dev-perl/XML-LibXML-1.660.0
		>=dev-perl/XML-LibXSLT-1.660.0
	)
	podformatter? (
		>=virtual/perl-Pod-Simple-3.10.0
	)
	transclusion? (
		dev-perl/libwww-perl
		dev-perl/URI-Fetch
	)
	amazonboxes? (
		dev-perl/Net-Amazon
	)
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	dev-perl/File-Copy-Recursive
	test? (
		>=dev-perl/Email-Sender-0.102.370
		>=dev-perl/SQL-Translator-0.90.60
		dev-perl/Test-Differences
		>=virtual/perl-Test-Simple-0.880.0
		>=dev-perl/Test-WWW-Mechanize-Catalyst-0.510.0
		>=dev-perl/WWW-Mechanize-1.540.0
		>=dev-perl/WWW-Mechanize-TreeBuilder-1.100.0
	)
"
