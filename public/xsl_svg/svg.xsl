<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Lab 3 by Alexey Vorobyov</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="графика">
        <svg width="{@ширина}" height="{@высота}" xmlns="http://www.w3.org/2000/svg">
            <xsl:for-each select="эллипс">
                <ellipse id="{@id}" fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}" cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
            </xsl:for-each>
        </svg>
    </xsl:template>

</xsl:stylesheet>