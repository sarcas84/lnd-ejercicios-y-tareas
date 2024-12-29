<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" indent="no"/>
    <xsl:template match="/">
        [
        <xsl:apply-templates select="fruits/fruit"/>
        ]
    </xsl:template>

    <xsl:template match="fruit">
        "<xsl:value-of select="normalize-space(.)"/>"
        <xsl:if test="position() != last()">, </xsl:if>
    </xsl:template>
</xsl:stylesheet>



