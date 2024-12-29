<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:for-each select="products/product">
            <p>
                <xsl:choose>
                    <xsl:when test="price &gt; 500">
                        <b><xsl:value-of select="name"/></b> - $<xsl:value-of select="price"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="name"/> - $<xsl:value-of select="price"/>
                    </xsl:otherwise>
                </xsl:choose>
            </p>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
