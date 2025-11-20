<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
  <xsl:template match="/">
    <html>
      <head>
	  <style>
	    h2 {color: #7A4DB3; text-align: center; margin: 30px 0 20px; font-size: 1.8em; }
		p {font-size: 1.1em;color: #555; text-align: center;  max-width: 900px;margin: 0 auto;margin-bottom: 40px; font-style: italic;}
	   </style>
	    <title>My Portfolio | Contact</title> 
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
		  <a href="MyPortfolioClients.html">Clients</a>
		  <a href="MyPortfolioContact.html" class="active">Contact</a>
		  </nav>
        </header>
        
    <main>
		  <div class="presentation">
		    <h2><xsl:value-of select="page/content/section[1]/h2"/></h2>
		    <xsl:copy-of select="page/content/section[1]/p"/>
          </div>
		  <div class="contact">
		    <h2><xsl:value-of select="page/content/section[2]/h2"/></h2>
			<p>
			<a href="mailto:{page/content/section[2]/p/email}" class="email-link">
			<xsl:value-of select="page/content/section[2]/p/email"/></a>
			</p>
		  </div>
	</main> 
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>