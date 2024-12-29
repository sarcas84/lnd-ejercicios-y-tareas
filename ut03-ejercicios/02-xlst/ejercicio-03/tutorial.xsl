<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:for-each select="sections/section">
            <h2><xsl:value-of select="title"/></h2>
            <p><xsl:value-of select="content"/></p>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

