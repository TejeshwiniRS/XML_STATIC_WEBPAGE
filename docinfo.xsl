<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match = "/"> 
<html>
<body bgcolor="#D4F1F4">
<h1><center>DOCTOR'S LIST</center></h1>
<table border="2" align="center">
<tr bgcolor="129EA9">
<th>DOCTOR ID</th>
<th>NAME</th>
<th>YEARS OF EXPERIENCE</th>
<th>SPECIALITY</th>
<th>PHONE NO</th>
</tr>
<xsl:for-each select="doctorinfo/personalinfo">
<xsl:sort select = "name"/> <!-- Sorting according to name-->
<tr>
<td>
<xsl:value-of select="@did"/>
</td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="exp"/></td>
<td><xsl:value-of select="speciality"/></td>
<td><xsl:value-of select="cno"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
