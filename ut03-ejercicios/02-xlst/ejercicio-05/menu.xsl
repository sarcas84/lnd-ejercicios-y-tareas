<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <nav>
            <ul>
                <xsl:for-each select="menu/item">
                    <li><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ul>
        </nav>
    </xsl:template>
</xsl:stylesheet>
