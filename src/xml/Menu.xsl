<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <script src="https://kit.fontawesome.com/f38ee08163.js" crossorigin="anonymous"></script>
                <title>Restaurant</title>
                <style type="text/css">
                    body{
                    background-image: url("fond-sans-menu-3.jpg");
                    background-size: cover;
                    }
                    #menus{
                    text-align: center;
                    }
                    .menu{
                    margin: 0 auto;
                    margin-bottom: 100px;
                    width: 50%;
                    }
                    ul{
                    list-style-type: none;
                    }
                    li{
                    text-align: justify;
                    }
                    .foodTitle{
                    font-size: larger;
                    font-weight:bolder;
                    }
                    .entree{

                    margin-bottom: 30px;
                    }
                    .plat{
                    margin-bottom: 30px;
                    }
                    .fromage{
                    margin-bottom: 30px;
                    }
                    .dessert{
                    margin-bottom: 30px;
                    }
                    .boissons{
                    margin: 0 auto;
                    margin-bottom: 30px;
                    width: 50%;
                    }
                    h1{
                    text-decoration: underline;
                    margin-bottom: 90px;
                    text-align:center;
                    }
                    .nom{
                    font-weight: bolder;
                    margin-bottom: -20px;
                    }
                </style>
            </head>
            <body>
                <h1>Catalogue du Restaurant :</h1>
                <div id="menus">
                    <xsl:for-each select="//menu">
                        <div class="menu">
                            <h2>Menu à <xsl:value-of select="@prix"/>€, boisson
                                <xsl:value-of select="@boisson"/>
                            </h2>

                            <xsl:if test="entree">
                                <div class="entree">
                                    <p class="foodTitle">Entrée(s) :</p>
                                    <ul>
                                        <xsl:for-each select="entree">
                                            <li>
                                                <div class="nom">
                                                    <xsl:value-of select="nom"/>
                                                </div>
                                                <br/>
                                                <xsl:value-of select="description"/>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                            </xsl:if>

                            <xsl:if test="plat">
                                <div class="plat">
                                    <p class="foodTitle">Plat(s) :</p>
                                    <ul>
                                        <xsl:for-each select="plat">
                                            <li>
                                                <div class="nom">
                                                    <xsl:value-of select="nom"/>
                                                </div>
                                                <br/>
                                                <xsl:value-of select="description"/>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                            </xsl:if>

                            <xsl:if test="fromage">
                                <div class="fromage">
                                    <p class="foodTitle">Fromage(s) :</p>
                                    <ul>

                                        <xsl:for-each select="fromage">
                                            <li>
                                                <div class="nom">
                                                    <i class="fa-solid fa-cheese"></i><xsl:value-of select="nom"/>
                                                </div>
                                                <br/>
                                                <xsl:value-of select="description"/>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                            </xsl:if>

                            <xsl:if test="dessert">
                                <div class="dessert">
                                    <p class="foodTitle">Dessert(s) :</p>
                                    <ul>

                                        <xsl:for-each select="dessert">
                                            <li>
                                                <div class="nom">
                                                    <xsl:value-of select="nom"/>
                                                </div>
                                                <br/>
                                                <xsl:value-of select="description"/>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                            </xsl:if>
                        </div>
                    </xsl:for-each>


                </div>
                <div class="boissons">
                    <p class="foodTitle">Boissons :</p>
                    <ul>
                        <xsl:for-each select="//boisson">
                            <div class="boisson">
                                <li>
                                    <xsl:value-of select="nom"/> : <xsl:value-of select="@prix"/>€
                                </li>
                            </div>
                        </xsl:for-each>
                    </ul>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>