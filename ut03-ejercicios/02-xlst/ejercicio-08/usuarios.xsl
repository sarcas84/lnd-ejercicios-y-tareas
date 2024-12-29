<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" indent="no"/>
    <xsl:template match="/">
        [
        <xsl:for-each select="users/user">
            {
                "id": "<xsl:value-of select="id"/>",
                "name": "<xsl:value-of select="normalize-space(name)"/>",
                "email": "<xsl:value-of select="normalize-space(email)"/>"
            }
            <xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]
    </xsl:template>
</xsl:stylesheet>
