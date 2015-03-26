<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output indent="yes"></xsl:output>    
    
<xsl:template match="/">
  <lineup><xsl:apply-templates/></lineup>
</xsl:template>


 <xsl:template match="band">
	<artist>
    	<xsl:attribute name="id">
       		<xsl:value-of select="@id"/>
       </xsl:attribute>
       	<name><xsl:value-of select="@name"/></name>
        <genres>
        	<xsl:apply-templates select="@genre" />
        </genres>
        <writeup>
        	<xsl:value-of select="description"/>
        </writeup>
        <xsl:apply-templates select="timeslot" />
        <photo>
        	<xsl:attribute name="format">
       			<xsl:value-of select="substring-after(image/@src,'.')"/>
       		</xsl:attribute>
           	 <xsl:value-of select="substring-before(image/@src,'.')"/>
        </photo>
    
       
        
    </artist>
</xsl:template>


<xsl:template match="@genre">
	<genre><xsl:value-of select="."/></genre>
</xsl:template>


<xsl:template match="timeslot">
        <gig>
        	<day>
        		<xsl:value-of select="@day"/>
           </day>
          
           <time>
           	<start>
           		<xsl:value-of select="time/@start"/>
           	</start>
            	<end>
           		<xsl:value-of select="time/@end"/>
           	</end>
           </time>
         </gig> 
</xsl:template>


</xsl:stylesheet>