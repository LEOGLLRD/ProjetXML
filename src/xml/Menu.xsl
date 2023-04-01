<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Restaurant</title>
                <style type="text/css">
                    body {
                    background-image: url("vecteur-de-dessin-de-croquis-de-nourriture-et-de-boissons-73260915.jpg");
                    }

                    #menus {
                    text-align: center;
                    display: grid;
                    grid-template-columns: repeat(3, 2fr);
                    grid-auto-rows: auto;
                    }

                    .menu{
                    -webkit-box-shadow: 5px 5px 15px 5px #000000;
                    box-shadow: 5px 5px 15px 5px #000000;
                    background-color: lightgrey;
                    margin-left: 150px;
                    margin-top: 100px;
                    border-radius: 50px;
                    }

                    .boisson{
                    margin-left: 30px;
                    margin-bottom: 10px;
                    }
                    .moyen{
                    margin-left: 30px;
                    margin-bottom: 10px;
                    }
                    ul {
                    list-style-type: none;
                    }

                    li {
                    margin-right: 15px;
                    text-align: justify;
                    }

                    .foodTitle {
                    font-size: larger;
                    font-weight: bolder;
                    }

                    .entree {

                    margin-bottom: 30px;
                    }

                    .plat {
                    margin-bottom: 30px;
                    }

                    .fromage {
                    margin-bottom: 30px;
                    }

                    .dessert {
                    margin-bottom: 30px;
                    }

                    .boissons {
                    height: 200px;
                    text-align: center;
                    border-radius: 50px;
                    -webkit-box-shadow: 5px 5px 15px 5px #000000;
                    box-shadow: 5px 5px 15px 5px #000000;
                    background-color: aliceblue;
                    margin: 0 auto;
                    margin-bottom: 30px;
                    width: 50%;
                    }
                    .paiements {
                    height: 200px;
                    text-align: center;
                    border-radius: 50px;
                    -webkit-box-shadow: 5px 5px 15px 5px #000000;
                    box-shadow: 5px 5px 15px 5px #000000;
                    background-color: aliceblue;
                    margin: 0 auto;
                    margin-bottom: 30px;
                    width: 50%;
                    }

                    h1 {
                    width: 60%;
                    background-color: white;
                    font-size: 100px;
                    text-decoration: underline;
                    margin-bottom: 90px;
                    text-align: center;
                    margin-left: auto;
                    margin-right: auto;
                    }

                    .nom {
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
                                                    <i class="fa-solid fa-cheese"></i>
                                                    <xsl:value-of select="nom"/>
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
                <div class="paiements">
                    <p class="foodTitle">Moyens de paiement :</p>
                    <ul>
                        <xsl:for-each select="//moyenPaiement">
                            <div class="moyen">
                                <li>
                                    <xsl:value-of select="text()"/>
                                </li>
                            </div>
                        </xsl:for-each>
                    </ul>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>