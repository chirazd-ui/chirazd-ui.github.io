<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
  <xsl:template match="/">
    <html>
      <head>
	    <title>My Portfolio | Accueil</title> 
        <link rel="stylesheet" type="text/css" href="MyPortfolioAccueil.css"/>
      </head>
     <body>
        <header>
          <img src="img/myphoto.jpg" alt="My Photo"/>
          <h1>
            <span>Chiraz</span>
            Darchérif
          </h1>
          <nav>
		  <a href="MyPortfolioAccueil.html" class="active">Accueil</a>
		  <a href="MyPortfolioWebtoons.html">Webtoons</a>
		  <a href="MyPortfolioClients.html">Clients</a>
		  <a href="MyPortfolioContact.html">Contact</a>
		  </nav>
        </header>
       
          <div class="title-page">Portfolio de mes traductions</div>
          <div class="intro-text">
            Mes traductions de webtoons du coréen vers le français, réalisées entre juin 2020 et juin 2023 pour divers clients.
Les plateformes « Verytoon » et « Piccoma », sont désormais fermées et inactives.
Certaines de mes œuvres sont encore disponibles sur des plateformes comme Delitoon et Ono, mais leur disponibilité peut varier et elles pourraient ne plus être accessibles sur ces plateformes au moment où vous les consulterez.
          </div>

         <Translations>
          <xsl:for-each select="Translations/Webtoon">
            <Webtoon>
              <Cover>
                <img src="{Cover/@src}" alt="{Cover/@alt}"/>
              </Cover>
              <Title>
                <xsl:value-of select="Title"/>
              </Title>
              <OriginalTitle>
                <xsl:value-of select="OriginalTitle"/>
              </OriginalTitle>
              <Status>
                <xsl:value-of select="Status"/>
              </Status>
              <Genre>
                <xsl:value-of select="Genre"/>
              </Genre>
              <TranslatedChapters>
                Épisodes traduits : <xsl:value-of select="TranslatedChapters/StartChapter"/> à <xsl:value-of select="TranslatedChapters/EndChapter"/>
              </TranslatedChapters>
              <TotalChapters>
                Total des épisodes : <xsl:value-of select="TotalChapters"/>
              </TotalChapters>
              <Client>
                Pour <xsl:value-of select="Client"/>
              </Client>
              <PublishedOnPlatform>
                À lire sur : 
                <br/> 
                <xsl:for-each select="PublishedOnPlatform/Platform">
				  <Platform status="{@status}">
				    <xsl:choose>
				      <xsl:when test="@status = 'active' and @url">
				        <a href="{@url}" target="_blank" class="platform active">
                          <xsl:value-of select="@name"/>
					    </a>
					  </xsl:when>
					  <xsl:otherwise>
					    <span class="platform inactive">
					      <xsl:value-of select="@name"/>
						</span> 
					  </xsl:otherwise>
					</xsl:choose>
                  </Platform>
                </xsl:for-each>
              </PublishedOnPlatform>
            </Webtoon>
          </xsl:for-each>
        </Translations>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>