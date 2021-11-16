<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Hallgatok apple-template</h2>  
  <xsl:apply-templates/>  
  </body>
  </html>
</xsl:template>

<xsl:template match="student">
  <p>
    <xsl:apply-templates select="@id"/>  
    <xsl:apply-templates select="vezeteknev"/>
    <xsl:apply-templates select="keresztnev"/>  
    <xsl:apply-templates select="kor"/>  
    <xsl:apply-templates select="fizetes"/>  
  </p>
</xsl:template>

<xsl:template match="@id">
  ID: <span style="color:#ff0000">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="vezeteknev">
  Vezeteknev: <span style="color:#00ff00">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="keresztnev">
  Keresztnev: <span style="color:#0000ff">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="kor">
  Kor: <span style="color:#b9g60f">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="fizetes">
  Fizetes: <span style="color:#6a8c00">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

</xsl:stylesheet>

