<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" indent="no"/>
    <xsl:template match="/">
        {
        <xsl:for-each select="store/category">
            "<xsl:value-of select="@name"/>": [
                <xsl:for-each select="product">
                    {
                        "name": "<xsl:value-of select="normalize-space(name)"/>",
                        "price": <xsl:value-of select="price"/>
                    }
                    <xsl:if test="position() != last()">,</xsl:if>
                </xsl:for-each>
            ]
            <xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        }
    </xsl:template>
</xsl:stylesheet>
