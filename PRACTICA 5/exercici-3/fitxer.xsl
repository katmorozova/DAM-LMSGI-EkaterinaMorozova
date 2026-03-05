<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
  
  <html>
        <head>
      
                <title>Llista d'empleats</title>
                
                <style>
                      h3 {
                            color: blue; font-size: 22px;
                      }
                      .nom {
                            font-size: 18px;
                      }
                      .oficina {
                            color: red; font-style: italic;
                      }
                      oficina b {
                         font-style: italic;
                      }
              </style>
                
                
                
        </head>
        
         <body>
              <h2>Llista d'empleats</h2>
              
                      <ul>
                            <xsl:for-each select="employees/employee">
                                  <xsl:sort select="firstName" data-type="text" order="ascending"/>

                                  <li>
                                    <h3>Empleat amb id <xsl:value-of select="@employeeNumber"/></h3>

                                    <ul>
                                        <li>
                                            <b>Nom: </b>
                                            <span class="nom">
                                                <xsl:value-of select="firstName"/> <xsl:value-of select="lastName"/>
                                            </span>
                                        </li>
                                  <li>
                                    <b>Correu: </b>
                                    <xsl:value-of select="email"/>
                                </li>

                                <li>
                                    <b>Id del superior: </b>
                                    <xsl:value-of select="reportsTo"/>
                                </li>

                                <li>
                                    <b>Posició: </b>
                                    <xsl:value-of select="jobTitle"/>
                                </li>

                                <li>
                                    <b>Oficina amb codi: </b>
                                    <xsl:value-of select="office/@ofCode"/>
                                    <ul class="oficina">
                                        <li><b>Telèfon: </b> <xsl:value-of select="office/ofPhone"/></li>
                                        <li><b>Adreça: </b> <xsl:value-of select="office/ofAddress1"/></li>
                                        <li><b>Estat: </b> <xsl:value-of select="office/ofState"/></li>
                                        <li><b>País: </b> <xsl:value-of select="office/ofCountry"/></li>
                                        <li><b>Codi Postal: </b> <xsl:value-of select="office/ofPostalCode"/></li>
                                        <li><b>Territori: </b> <xsl:value-of select="office/ofTerritory"/></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                    </xsl:for-each>
                </ul>

        </body>
      </html>
  </xsl:template>
</xsl:stylesheet>
