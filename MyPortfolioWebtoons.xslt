<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
  <xsl:template match="/">
    <html>
      <head>
	    <title>My Portfolio | Webtoons</title> 
        <link rel="stylesheet" type="text/css" href="MyPortfolioWebtoons.css"/>
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
		  <a href="MyPortfolioWebtoons.html" class="active">Webtoons</a>
		  <a href="MyPortfolioClients.html">Clients</a>
		  <a href="MyPortfolioContact.html">Contact</a>
		  </nav>
        </header>
        
          <div class="title-page">Un bref résumé des webtoons</div>
          

         <Translations>
          <xsl:for-each select="Translations/Webtoon">
            <Webtoon>
              <Cover>
                <img src="{Cover/@src}" alt="{Cover/@alt}"/>
              </Cover>
			  <div>
              <Title>
                <xsl:value-of select="Title"/>
              </Title>
              <Translator>
                <xsl:value-of select="Translator"/>
              </Translator>
              <Summary>
                <xsl:value-of select="Summary"/>
              </Summary>
			  </div>
            </Webtoon>
          </xsl:for-each>
        </Translations>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>