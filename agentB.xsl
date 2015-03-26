<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:output indent="yes"></xsl:output>
    
<xsl:template match="/">
  <lineup><xsl:apply-templates/></lineup>
</xsl:template>


 <xsl:template match="artist">
	<artist>
    	<xsl:attribute name="id">
       		<xsl:value-of select="id"/>
       </xsl:attribute>
       	<name><xsl:value-of select="name"/></name>
        <genres>
        <xsl:apply-templates select="genres/g" />
        </genres>
       
        <writeup>
        	<xsl:value-of select="description"/>
        </writeup>
        <xsl:apply-templates select="time" />
        <photo>
        	<xsl:attribute name="format">
       			<xsl:value-of select="substring-after(image,'.')"/>
       		</xsl:attribute>
           	 <xsl:value-of select="substring-before(image,'.')"/>
        </photo>  
    </artist>
</xsl:template>


<xsl:template match="genres/g">
	<genre><xsl:value-of select="."/></genre>
</xsl:template>


<xsl:template match="time">
        <gig>
        	<day>
        		<xsl:value-of select="day"/>
           </day>
          
           <time>
           	<start>
           		<xsl:value-of select="substring-before(time,'-')"/>
           	</start>
            	<end>
           		<xsl:value-of select="substring-after(time,'-')"/>
           	</end>
           </time>
         </gig> 
</xsl:template>


</xsl:stylesheet>