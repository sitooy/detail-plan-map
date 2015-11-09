<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
 xmlns="http://www.opengis.net/sld"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>ak_areas</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>Asemakaavakartan alueekohteet</Title>
      <Abstract>Aluekohteet kuvataan kahdella FeatureTypeStylella: aluetaytto + kuvioinnit [kuvioiden tulee nakya aluevarien paalla]</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering polygons -->
      <FeatureTypeStyle>
        <Name>Pohja fill</Name>
        <Rule>
          <Name>Paakayttotarkoitusalueet</Name>
          <!--kuvataan aluevarilla ja mustalla reunaviivalla-->
          <ogc:Filter>
            <ogc:PropertyIsNotEqualTo>
              <ogc:PropertyName>color</ogc:PropertyName>
              <ogc:Literal>#</ogc:Literal>
            </ogc:PropertyIsNotEqualTo>
          </ogc:Filter>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
            <!--aluevarit luetaan tietokannasta 'color' muuttujasta-->
              <CssParameter name="fill">
                <ogc:PropertyName>color</ogc:PropertyName>
              </CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.2</CssParameter>   
            </Stroke>
           </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <FeatureTypeStyle>
        <Name>Overlay</Name>
        <Rule>
          <Name>pp_viivoitus</Name>
          <!--jalankulankululle ja pyorailulle varatun alueen viivoitus, mikali se kuvataan aineistossa alueena-->
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>luokka</ogc:PropertyName>
              <ogc:Literal>pp_viivoitus</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>5000</MaxScaleDenominator>         
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://horline</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#000000</CssParameter>
                      <CssParameter name="stroke-width">0.2</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>2.5</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
        </Rule>  
        
        <Rule>
          <Name>istutettava_alue</Name>
          <!--istutettavan alueen pistekuviointi-->
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>luokka</ogc:PropertyName>
              <ogc:Literal>istutettava_alue</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>5000</MaxScaleDenominator>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://dot</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#000000</CssParameter>
                      <CssParameter name="stroke-width">0.2</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>1</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
          <!--istutettavan alueen raja voi kuulua alueeseen, joten kuvataan reuna pistekatkoviivalla-->
          <!--HUOM: tasta syntyy myos paallekkaisia viivoja-->
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
             <Stroke>
                <CssParameter name="stroke">#000000</CssParameter>
                <CssParameter name="stroke-width">0.2</CssParameter>
                <CssParameter name="stroke-dasharray">3 0.8 0.2 0.8</CssParameter>
             </Stroke>
          </PolygonSymbolizer>
        </Rule>
    
        <Rule>
          <Name>tori</Name>
          <!--torialueen ruutukuviointi-->
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>luokka</ogc:PropertyName>
              <ogc:Literal>katualue_tori</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>5000</MaxScaleDenominator>         
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://plus</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#000000</CssParameter>
                      <CssParameter name="stroke-width">0.1</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>2</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
          <!--torialueen reunaviiva (katualueen reuna)-->
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.2</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>  
        
        <Rule>
          <Name>pihakatu</Name>
          <!--pihakadun viistoviivoitus-->
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>luokka</ogc:PropertyName>
              <ogc:Literal>katualue_pihakatu</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MaxScaleDenominator>5000</MaxScaleDenominator>                  
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://slash</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#000000</CssParameter>
                      <CssParameter name="stroke-width">0.1</CssParameter>
                    </Stroke>
                  </Mark>
                 <Size>2</Size>
               </Graphic>
             </GraphicFill>
           </Fill>
         </PolygonSymbolizer>
         <!--pihakadun reunaviiva (katualueen reuna)-->
         <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
           <Stroke>
             <CssParameter name="stroke">#000000</CssParameter>
             <CssParameter name="stroke-width">0.2</CssParameter>
           </Stroke>
          </PolygonSymbolizer>
        </Rule>    
     
        <Rule>
          <Name>johtoalue</Name>
          <!--johtoalueen reunaviiva-->
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>luokka</ogc:PropertyName>
              <ogc:Literal>johdot</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.2</CssParameter>
              <CssParameter name="stroke-dasharray">12 1 1 1 4 1 1 1</CssParameter>
            </Stroke>
          </LineSymbolizer>       
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
