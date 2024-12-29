<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" indent="no"/>
    <xsl:template match="/">
        [
        <xsl:for-each select="document/section">
            {
                "title": "<xsl:value-of select="normalize-space(title)"/>",
                "content": "<xsl:value-of select="normalize-space(content)"/>"
            }
            <xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]
    </xsl:template>
</xsl:stylesheet>
