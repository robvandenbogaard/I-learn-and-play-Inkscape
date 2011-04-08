<?xml version="1.0"?>
<xsl:stylesheet  version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:svg="http://www.w3.org/2000/svg">
  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="svg:*[@style='display:none']">
    <xsl:copy>
      <xsl:copy-of select="@svg:*[name(.)!='style']"/>
      <xsl:attribute name="opacity">0</xsl:attribute>
      <xsl:attribute name="onmouseover">setAttribute('opacity','1')</xsl:attribute>
      <xsl:attribute name="onmouseout">setAttribute('opacity','0')</xsl:attribute>
      <xsl:apply-templates select="node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>

