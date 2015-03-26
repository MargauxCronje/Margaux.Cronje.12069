<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output indent="yes"></xsl:output>    

<xsl:template match="/">
     <lineup><xsl:apply-templates/></lineup>
</xsl:template>


<xsl:template match="client">
    <artist>
        <xsl:attribute name="id">
            <xsl:value-of select="data[@key='id']/@value"/>
        </xsl:attribute>
        <name><xsl:value-of select="data[@key='name']/@value"/>     
        </name>
        <genres><xsl:apply-templates select="data[@key='genre']" />
        </genres>
        <writeup><xsl:value-of select="data[@key='description']/@value"/>   
        </writeup>
        <gig><xsl:apply-templates select="data[@key='performanceday']" />
             <xsl:apply-templates select="data[@key='performancetime']" />
        </gig>
            <xsl:apply-templates select="data[@key='picture']" />

    </artist>
    
    
</xsl:template>
    
<xsl:template match="data[@key='genre']">
	<genre><xsl:value-of select="substring-before(@value,' / ')"/></genre>
    <genre><xsl:value-of select="substring-after(@value,' / ')"/></genre>
</xsl:template>
    
    
<xsl:template match="data[@key='performanceday']">
        	<day>
        		<xsl:value-of select="@value"/>
           </day>         
</xsl:template>
   
<xsl:template match="data[@key='performancetime']">
        <time>
           	<start>
           		<xsl:value-of select="substring-before(@value,'-')"/>
           	</start>
            	<end>
           		<xsl:value-of select="substring-after(@value,'-')"/>
           	</end>
        </time>       
</xsl:template>
        
    
<xsl:template match="data[@key='picture']">
   	    <photo>
            <xsl:attribute name="format"> <xsl:value-of select="substring-after(@value,'.')"/></xsl:attribute>
            <xsl:value-of select="substring-before(@value,'.')"/>
        </photo>
          	      
</xsl:template>

    
</xsl:stylesheet>