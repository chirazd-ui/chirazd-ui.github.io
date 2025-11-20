<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
  <xsl:template match="/">
    <html>
      <head>
	  <style>
	    h2 {color: #7A4DB3; text-align: center; margin: 30px 0 20px; font-size: 1.8em; }
	   </style>
	    <title>My Portfolio | Clients</title> 
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
		  <a href="MyPortfolioAccueil.html">Accueil</a>
		  <a href="MyPortfolioWebtoons.html">Webtoons</a>
		  <a href="MyPortfolioClients.html" class="active">Clients</a>
		  <a href="MyPortfolioContact.html">Contact</a>
		  </nav>
        </header>

        <h2>Delitoon</h2>
        <Translations>
          <xsl:if test="Translations/Webtoon[Client = 'Delitoon']"></xsl:if>
			 <xsl:for-each select="Translations/Webtoon[Client = 'Delitoon']">
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
			
			<h2>Studio Charon</h2>
			<Translations>
		  
		   <xsl:if test="Translations/Webtoon[Client = 'Studio Charon']">
		  </xsl:if>
		  <xsl:for-each select="Translations/Webtoon[Client = 'Studio Charon']">
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
		  
		  <h2>Verytoon</h2>
		  <Translations>
			  
		  <xsl:if test="Translations/Webtoon[Client = 'Verytoon']">
		  </xsl:if>  
		  <xsl:for-each select="Translations/Webtoon[Client = 'Verytoon']">
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
		  
		  <h2>Piccoma</h2>
		  <Translations>
		  
			  
		  <xsl:if test="Translations/Webtoon[Client = 'Piccoma']">
			  </xsl:if> 
			<xsl:for-each select="Translations/Webtoon[Client = 'Piccoma']">
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