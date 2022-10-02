<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:output method="xhtml" encoding="UTF-8"/>
    
    <xsl:template match="tei:TEI">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                <meta name="mobile-web-app-capable" content="yes"/>
                <meta name="apple-mobile-web-app-capable" content="yes"/>
                <meta name="apple-mobile-web-app-title" content="Missal of Count Novak"/>
                <link rel="shortcut icon" type="image/x-icon" href="./favicon.png"/>
                <link rel="icon" type="image/png" href="./favicon.png" sizes="96x96"/>
                <link rel="profile" href="http://gmpg.org/xfn/11"/>
                <title>
                    <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[not(@type = 'alternative')]"/>
                </title>
                <link rel="stylesheet" id="fundament-styles"  href="./css/fundament.min.css" type="text/css"/>
                <link rel="stylesheet" href="./css/formats.css" type="text/css"/>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css"/>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/js/all.min.js" integrity="sha512-LW9+kKj/cBGHqnI4ok24dUWNR/e8sUD8RLzak1mNw5Ja2JYCmTXJTF5VpgFSw+VoBfpMvPScCo2DnKTIUjrzYw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                <script type="text/javascript" src="./js/jquery.min.js"></script>
                <script type="text/javascript" src="./js/fundament.min.js"></script>
            </head>
            <body class="home">
                <div class="hfeed site" id="page">
                    <!-- ******************* The Navbar Area ******************* -->
                    <div class="wrapper-fluid wrapper-navbar sticky-navbar" id="wrapper-navbar" itemscope="itemscope" itemtype="http://schema.org/WebSite">
                        <a class="skip-link screen-reader-text sr-only" href="#content">Skip to content</a>
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <div class="container" >
                                <!-- Your site title as branding in the menu -->
                                <a href="/" class="navbar-brand custom-logo-link" rel="home" itemprop="url"><img src="./pictures/favicon.png" class="img-fluid" alt="Missale of Count Novak Logo" itemprop="logo" style="border-radius:50%;"/></a><!-- end custom logo -->
                                <a class="navbar-brand site-title-with-logo" rel="home" href="/" title="Missal of Count Novak" itemprop="url">Missale of Count Novak</a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                    <!-- Your menu goes here -->
                                    <ul id="main-menu" class="navbar-nav">
                                        <li class="nav-item active"><a title="Home" href="/" class="nav-link">Home</a></li>
                                        <li class="nav-item"><a title="Simplified Transcription" href="simplified-transcription.html" class="nav-link">Simplified Transcription</a></li>
                                        <li class="nav-item"><a title="About" href="about.html" class="nav-link">About</a></li>
                                    </ul>
                                    <form class="form-inline my-2 my-lg-0 navbar-search-form" method="get" action="/" role="search">
                                        <input class="form-control navbar-search" id="s" name="s" type="text" placeholder="Search" value="" autocomplete="off"/>
                                            <button type="submit" class="navbar-search-icon">
                                                <i data-feather="search"></i>
                                            </button>
                                    </form>
                                </div>
                                <!-- .collapse navbar-collapse -->
                            </div>
                            <!-- .container -->
                        </nav>
                        <!-- .site-navigation -->
                    </div>
                    <!-- .wrapper-navbar end -->
                    <div class="wrapper" id="wrapper-hero">
                        <!-- ******************* The Hero Area ******************* -->
                        <div class="wrapper" id="wrapper-hero-content" style="background-image:url(./pictures/missale-first-page.jpg); height:10em;max-width:1199px;margin:0 auto;">
                            
                        </div>
                        <!-- #wrapper-hero-content -->
                        <div class="wrapper-hero-content-sub wrapper" id="wrapper-hero-content-sub" style="text-align:center;background-color:#ab5c4f;max-width:1199px;margin:0 auto;color:white;">
                            <h1>Missale of Count Novak - Misal kneza Novaka</h1>
                            <p>This is a page about the Missale of Count Novak. Here you find a transcription of this text in a critical and a simplified version.</p>
                        </div>
                    </div>
                    <div class="wrapper" id="index-wrapper">
                        <div class="container" id="content" tabindex="-1">
                            <div class="row">
                                <!-- Do the left sidebar check and opens the primary div -->
                                <div class="col-md-12 content-area" id="primary">
                                    <main class="site-main" id="main">
                <div id="main-content" style="background-color: white;">
                    <div id="main-content-header">
                        <xsl:apply-templates select="tei:teiHeader"/>
                    </div>
                    <div id="main-content-body">
                        <xsl:apply-templates select="tei:text/tei:body"/>
                    </div>
                </div>
                                    </main>
                                    <!-- #main -->
                                    <!-- The pagination component -->
                                </div>
                                <!-- #primary -->
                                <!-- Do the right sidebar check -->
                            </div>
                            <!-- .row -->
                        </div>
                        <!-- Container end -->
                    </div>
                    <!-- Wrapper end -->
                    <div class="wrapper fundament-default-footer" id="wrapper-footer-full">
                        <div class="container" id="footer-full-content" tabindex="-1">
                            <div class="footer-separator">
                                <i data-feather="message-circle"></i> CONTACT
                            </div>
                            <div class="row">
                                <div class="footer-widget col-lg-3 col-md-2 col-sm-2 col-xs-6 col-3">
                                    <div class="textwidget custom-html-widget">
                                        <a href="https://stin.hr/"><img src="./pictures/Logo-STIN-200.JPG" class="image" alt="Logo" style="background-color: white;" title="Old Church Slavonic Institute, Zagreb"/></a>
                                    </div>
                                </div>
                                <!-- .footer-widget -->
                                <div class="footer-widget col-lg-4 col-md-4 col-sm-6 col-9">
                                    <div class="textwidget custom-html-widget">
                                        <p>
                                           Old Church Slavonic Institute
                                            <br/>
                                                Demetrova 11
                                                <br/>
                                                    10000 Zagreb
                                        </p>
                                        <p>
                                            Central: +385 1 4851380
                                                <br/>
                                                    E-mail: <a href="mailto:info@stin.hr">info@stin.hr</a>
                                        </p>
                                    </div>
                                </div>
                                <!-- .footer-widget -->
                                <div class="footer-widget col-lg-3 col-md-4 col-sm-4 ml-auto">
                                    <div class="textwidget custom-html-widget">
                                        <a href="https://vestigia.uni-graz.at"><img src="./pictures/vestigia-logo.jpg" class="image" alt="Logo" style="max-width: 50%; height: auto;" title="Vestigia Manuscript Research Centre"/></a>
                                    </div>
                                </div>
                                <!-- .footer-widget -->
                            </div>
                        </div>
                    </div>
                    <!-- #wrapper-footer-full -->
                    <div class="footer-imprint-bar" id="wrapper-footer-secondary" style="text-align:center; padding:0.4rem 0; font-size: 0.9rem;">
                        © Copyright OEAW | <a href="https://www.oeaw.ac.at/die-oeaw/impressum/">Impressum/Imprint</a>
                    </div>
                </div>
                <!-- #page we need this extra closing tag here -->
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
        <xsl:element name="p">
            <xsl:attribute name="class" select="'title'"/>
            <xsl:for-each select="tei:fileDesc/tei:titleStmt/tei:title">
                <xsl:value-of select="text()"/>
                <xsl:if test="position() != last()">
                    <xsl:text> - </xsl:text>
                </xsl:if>
            </xsl:for-each>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'responsibility'"/>
            <xsl:value-of select="tei:fileDesc/tei:titleStmt/tei:respStmt/tei:resp/text()"/>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'author'"/>
            <xsl:for-each select="tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name">
                <xsl:value-of select="./text()"/>
                <xsl:if test="position() != last()">
                    <xsl:text> / </xsl:text>
                </xsl:if>
            </xsl:for-each>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'publisher'"/>
            <xsl:value-of select="tei:fileDesc/tei:publicationStmt/tei:publisher/text()"/>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'publisher'"/>
            <xsl:value-of select="tei:fileDesc/tei:publicationStmt/tei:pubPlace/text()"/>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'date'"/>
            <xsl:text>03.10.2022</xsl:text>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'link-to-facsimiles'"/>
            <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:settlement/text()"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository/text()"/>
            <xsl:text>: </xsl:text>
            <xsl:element name="a">
                <xsl:attribute name="target" select="'_blank'"/>
                <xsl:attribute name="href" select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno[@type = 'DOI']/@corresp"/>
                <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno[@type = 'DOI']/text()"/>
            </xsl:element>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'link-to-facsimiles'"/>
            <xsl:text>The facsimile of the manuscript is available via the </xsl:text>
            <xsl:element name="a">
                <xsl:attribute name="target" select="'_blank'"/>
                <xsl:attribute name="href" select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:altIdentifier/tei:idno/@facs"/>
                <xsl:text>Austrian National Library</xsl:text>
            </xsl:element>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'physical-description'"/>
            <xsl:text>Form: </xsl:text>
            <xsl:if test="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/@form = 'codex'">
                <xsl:text>codex</xsl:text>
            </xsl:if>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'physical-description'"/>
            <xsl:text>Material: </xsl:text>
            <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/text()"/>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'physical-description'"/>
            <xsl:text>Extent: </xsl:text>
            <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:extent/tei:dimensions/tei:height/text()"/>
            <xsl:text> x </xsl:text>
            <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:extent/tei:dimensions/tei:width/text()"/>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'physical-description'"/>
            <xsl:text>Layout: </xsl:text>
            <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:layoutDesc/tei:layout/text()"/>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'physical-description'"/>
            <xsl:text>Decoration: </xsl:text>
            <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:decoDesc/tei:p/text()"/>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class" select="'physical-description'"/>
            <xsl:text>Date: </xsl:text>
            <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history/tei:p/text()"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:body">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    
    <xsl:template match="tei:div[@type = 'transcription']">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    
    <xsl:template match="tei:pb">
        <xsl:element name="p">
            <xsl:attribute name="class" select="'page-number'"/>
            <xsl:value-of select="@n"/>
            <xsl:text> </xsl:text>
            <xsl:element name="a">
                <xsl:attribute name="href" select="@facs"/>
                <xsl:attribute name="target" select="'_blank'"/>
                <i class="fas fa-image" style="transform: translate(0%,10%);"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:div[@type = 'liturgical-unit']">
        <xsl:element name="p">
            <xsl:attribute name="class" select="'manuscript-content'"/>
            <xsl:text>[</xsl:text>
            <xsl:if test="@rendition = '#left-column'">
                <xsl:text>left column</xsl:text>
            </xsl:if>
            <xsl:if test="@rendition = '#right-column'">
                <xsl:text>right column</xsl:text>
            </xsl:if>
            <xsl:text>]</xsl:text>
            <xsl:variable name="root-node" select="root()"/>
            <xsl:variable name="identifier" select="generate-id(.)"/>
            <xsl:for-each select="tokenize(@ana,' ')">
                <xsl:choose>
                    <xsl:when test="starts-with(substring-after(.,'#'),'lit-agent')">
                        <!-- <xsl:element name="span">
                            <xsl:attribute name="class" select="'liturgical-agent'"/>
                            <xsl:value-of select="$root-node/tei:TEI/tei:teiHeader/tei:encodingDesc/tei:classDecl/tei:taxonomy/tei:taxonomy[@n = 'liturgical agent']/tei:category[@xml:id = substring-after(current(),'#')]/@n"/>
                        </xsl:element> -->
                    </xsl:when>
                    <xsl:when test="starts-with(substring-after(.,'#'),'lit-cal')">
                        <span class="lit-cal">
                            <xsl:attribute name="id" select="concat('click-',$identifier,position())"/>    
                            <i class="fas fa-info-circle"></i>
                        </span>
                        <xsl:element name="span">
                            <xsl:attribute name="class" select="'liturgical-calendar hidden'"/>
                            <xsl:attribute name="id" select="concat($identifier,position())"/>
                            <xsl:value-of select="$root-node/tei:TEI/tei:teiHeader/tei:encodingDesc/tei:classDecl/tei:taxonomy/tei:taxonomy[@n = 'liturgical calendar']/tei:category[@xml:id = substring-after(current(),'#')]/@n"/>
                        </xsl:element>
                        <xsl:element name="script">
                            <xsl:attribute name="defer" select="'defer'"/>
                            <xsl:text>$('#</xsl:text>
                            <xsl:value-of select="concat('click-',$identifier,position())"/>
                            <xsl:text>').click(function(){$('#</xsl:text>
                            <xsl:value-of select="concat($identifier,position())"/>
                            <xsl:text>').toggleClass('visible');})</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="starts-with(substring-after(.,'#'),'lit-unit')">
                        <span class="lit-unit">
                            <xsl:attribute name="id" select="concat('click-',$identifier,position())"/>
                            <i class="fas fa-info-circle"></i>
                        </span>
                        <xsl:element name="span">
                            <xsl:attribute name="class" select="'liturgical-unit hidden'"/>
                            <xsl:attribute name="id" select="concat($identifier,position())"/>
                            <xsl:value-of select="$root-node/tei:TEI/tei:teiHeader/tei:encodingDesc/tei:classDecl/tei:taxonomy/tei:taxonomy[@n = 'liturgical units']/tei:category[@xml:id = substring-after(current(),'#')]/@n"/>
                        </xsl:element>
                        <xsl:element name="script">
                            <xsl:attribute name="defer" select="'defer'"/>
                            <xsl:text>$('#</xsl:text>
                            <xsl:value-of select="concat('click-',$identifier,position())"/>
                            <xsl:text>').click(function(){$('#</xsl:text>
                            <xsl:value-of select="concat($identifier,position())"/>
                            <xsl:text>').toggleClass('visible');})</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:element name="span">
                            <xsl:attribute name="class" select="'error'"/>
                            <xsl:text>Unknown category used in @ana</xsl:text>
                        </xsl:element>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </xsl:element>
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    
    <xsl:template match="tei:ab">
        <xsl:element name="div">
            <xsl:attribute name="class" select="'manuscript-content'"/>
            <xsl:apply-templates select="child::node()"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:lb">
        <xsl:element name="br"/>
        <xsl:element name="span">
            <xsl:attribute name="class" select="'line-number'"/>
            <xsl:value-of select="@n"/>
            <xsl:if test="exists(@prev)">
                <xsl:text> (cont.)</xsl:text>
            </xsl:if>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:hi[@rend = 'red-ink-bold']">
        <xsl:element name="span">
            <xsl:attribute name="class" select="'red-ink-bold'"/>
            <xsl:value-of select="text()"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:hi[@rend = 'red-ink']">
        <xsl:element name="span">
            <xsl:attribute name="class" select="'red-ink'"/>
            <xsl:value-of select="text()"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:num[@type = 'ordinal']">
        <xsl:value-of select="text()"/>
    </xsl:template>
    
    <xsl:template match="tei:ex">
        <xsl:text>(</xsl:text>
        <xsl:value-of select="text()"/>
        <xsl:text>)</xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <xsl:element name="span">
            <xsl:attribute name="class" select="'heading'"/>
            <xsl:apply-templates select="child::node()"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:seg[@type = 'liturgical-unit']">
        <xsl:variable name="root-node" select="root()"/>
        <xsl:variable name="identifier" select="generate-id(.)"/>
        <xsl:for-each select="tokenize(@ana,' ')">
            <xsl:choose>
                <xsl:when test="starts-with(substring-after(.,'#'),'lit-agent')">
                    <!-- <xsl:element name="span">
                        <xsl:attribute name="class" select="'liturgical-agent-inline'"/>
                        <xsl:value-of select="$root-node/tei:TEI/tei:teiHeader/tei:encodingDesc/tei:classDecl/tei:taxonomy/tei:taxonomy[@n = 'liturgical agent']/tei:category[@xml:id = substring-after(current(),'#')]/@n"/>
                    </xsl:element> -->
                </xsl:when>
                <xsl:when test="starts-with(substring-after(.,'#'),'lit-cal')">
                    <span class="lit-cal">
                        <xsl:attribute name="id" select="concat('click-',$identifier,position())"/>    
                        <i class="fas fa-info-circle"></i>
                    </span>
                    <xsl:element name="span">
                        <xsl:attribute name="class" select="'liturgical-calendar-inline hidden'"/>
                        <xsl:attribute name="id" select="concat($identifier,position())"/>
                        <xsl:value-of select="$root-node/tei:TEI/tei:teiHeader/tei:encodingDesc/tei:classDecl/tei:taxonomy/tei:taxonomy[@n = 'liturgical calendar']/tei:category[@xml:id = substring-after(current(),'#')]/@n"/>
                    </xsl:element>
                    <xsl:element name="script">
                        <xsl:attribute name="defer" select="'defer'"/>
                        <xsl:text>$('#</xsl:text>
                        <xsl:value-of select="concat('click-',$identifier,position())"/>
                        <xsl:text>').click(function(){$('#</xsl:text>
                        <xsl:value-of select="concat($identifier,position())"/>
                        <xsl:text>').toggleClass('visible');})</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="starts-with(substring-after(.,'#'),'lit-unit')">
                    <span class="lit-unit">
                        <xsl:attribute name="id" select="concat('click-',$identifier,position())"/>
                        <i class="fas fa-info-circle"></i>
                    </span>
                    <xsl:element name="span">
                        <xsl:attribute name="class" select="'liturgical-unit-inline hidden'"/>
                        <xsl:attribute name="id" select="concat($identifier,position())"/>
                        <xsl:value-of select="$root-node/tei:TEI/tei:teiHeader/tei:encodingDesc/tei:classDecl/tei:taxonomy/tei:taxonomy[@n = 'liturgical units']/tei:category[@xml:id = substring-after(current(),'#')]/@n"/>
                    </xsl:element>
                    <xsl:element name="script">
                        <xsl:attribute name="defer" select="'defer'"/>
                        <xsl:text>$('#</xsl:text>
                        <xsl:value-of select="concat('click-',$identifier,position())"/>
                        <xsl:text>').click(function(){$('#</xsl:text>
                        <xsl:value-of select="concat($identifier,position())"/>
                        <xsl:text>').toggleClass('visible');})</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:element name="span">
                        <xsl:attribute name="class" select="'error-inline'"/>
                        <xsl:text>Unknown category used in @ana</xsl:text>
                    </xsl:element>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    
    <xsl:template match="tei:div[not(@type = 'liturgical-unit') and not(@type = 'transcription')]"/>
    
</xsl:stylesheet>