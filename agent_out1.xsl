<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output indent="yes"></xsl:output> 
    
    
<xsl:template match="/">
  <html>
      <head><link rel="stylesheet" type="text/css" href="my_style.css" /></head>
      
<body>  
    <div id="container_body">
          <nav>
            <div id="logo"><img src="images/logo.png" width="106" height="106" alt="" />               </div>
            <ul>
                <li><a href="HOME.html">Home</a></li>
                <li><a href="NEWS.html">News</a></li>
                <li><a href="SCHEDULE.html">Shedule</a></li>
                <li><a href="BAND_PORTFOLIO.html">Band Profile</a></li>
                <li><a href="CONTACT_US.html">Contact Us</a></li>
            </ul>
          
          </nav>
        <div id="rounded-box-info">
         <table >
            <tr>
                <th>Band Name</th>
                <th>Genre</th> 
                <th>Writeup</th>
                <th></th>
            </tr>
          <xsl:apply-templates/>
          </table>
      </div>
    </div>
</body>  
    
     
      
    </html>
</xsl:template>

    <xsl:template match="artist">
       <html>
        
        
            <tr>
                <td><xsl:value-of select="name" /></td>
                <td><xsl:value-of select="genres" /></td>
                <td><xsl:value-of select="writeup" /></td>
                <td><img alt="Smiley face">
                    <xsl:attribute name="src">
                        <xsl:value-of select="photo" />.<xsl:value-of select="photo/@format" />
                        
                    </xsl:attribute>
                    </img>
                </td>
                
                
            </tr>
        

      </html>   
    </xsl:template>
    
</xsl:stylesheet>