<!--
 Copyright 2016, alex at staticlibs.net.
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
-->
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="yes" version="1.0" encoding="utf-8" indent="yes"/>
<xsl:strip-space elements="*"/>

<xsl:template match="/valgrindoutput">
    <xsl:apply-templates select="error/stack[frame/obj/text()[contains(.,'libwilton.so')]]"/>
 </xsl:template>

<xsl:template match="stack">
    <xsl:value-of select="../kind"/><xsl:text>: </xsl:text>
    <xsl:value-of select="../xwhat/text"/><xsl:text>&#xa;</xsl:text>
    <xsl:for-each select="frame">
        <xsl:text>    </xsl:text>
        <!--xsl:value-of select="ip"/><xsl:text>:</xsl:text-->
        <!--xsl:value-of select="obj"/><xsl:text>:</xsl:text-->
        <xsl:value-of select="fn"/><xsl:text>:</xsl:text>
        <!--xsl:value-of select="dir"/><xsl:text>:</xsl:text-->
        <xsl:value-of select="file"/><xsl:text>:</xsl:text>
        <xsl:value-of select="line"/><xsl:text>&#xa;</xsl:text>
    </xsl:for-each>
    <xsl:text>&#xa;</xsl:text>
</xsl:template>

</xsl:stylesheet>
