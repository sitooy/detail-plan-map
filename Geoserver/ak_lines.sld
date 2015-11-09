<?xml version="1.0" encoding="UTF-8"?><sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
<sld:Name>Default Styler</sld:Name>
<sld:FeatureTypeStyle>
  <sld:Name>name</sld:Name>
  
  <Rule>
    <Name>05mm_musta</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>viiva_paksu</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <CssParameter name="stroke">#000000</CssParameter>
        <CssParameter name="stroke-width">0.2</CssParameter>
      </Stroke>
    </LineSymbolizer>
  </Rule>
  
  <Rule>
    <Name>02mm_musta</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>viiva_ohut</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <CssParameter name="stroke">#000000</CssParameter>
        <CssParameter name="stroke-width">0.2</CssParameter>
      </Stroke>
    </LineSymbolizer>
  </Rule>
  
   <Rule>
    <Name>01mm_musta</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>viiva_kapea</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <CssParameter name="stroke">#000000</CssParameter>
        <CssParameter name="stroke-width">0.1</CssParameter>
      </Stroke>
    </LineSymbolizer>
  </Rule>
  
  <sld:Rule>
    <Name>02mm_pistekatko_musta</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>viiva_pistekatko</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.2</sld:CssParameter>
        <CssParameter name="stroke-dasharray">3 0.9 0.2 0.9</CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
  </sld:Rule>
  
  <sld:Rule>
    <Name>02mm_pitka_katko_musta</Name>
      <ogc:Filter>
         <ogc:PropertyIsEqualTo>
           <ogc:PropertyName>luokka</ogc:PropertyName>
           <ogc:Literal>viiva_pitkakatko</ogc:Literal>
         </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
        <sld:Stroke>
          <sld:CssParameter name="stroke">#000000</sld:CssParameter>
          <sld:CssParameter name="stroke-width">0.2</sld:CssParameter>
          <CssParameter name="stroke-dasharray">3 1.5</CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
  </sld:Rule> 
	
  <Rule>
    <!-- tarkista sijainti, jos kaytetaan punaisena -->
    <Name>Kayttotark_l_punainen</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>kayttotark_L</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <CssParameter name="stroke">#D81C3F</CssParameter>
        <!--CssParameter name="stroke">#000000</CssParameter-->
        <CssParameter name="stroke-width">0.3</CssParameter>
      </Stroke>
    </LineSymbolizer>
  </Rule>
  
  <sld:Rule><!-- tee poikkiviivat, eri leveysluokat-->
    <Name>poikkiviivoitus</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>poikkiviivoitus</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.2</sld:CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
  </sld:Rule>
  
  <sld:Rule>
    <Name>02mm_pistekatko_musta_poikkiviivalla</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>pistekatko_poikkari</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.2</sld:CssParameter>
        <CssParameter name="stroke-dasharray">3 0.9 0.2 0.9</CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <ExternalGraphic>
              <OnlineResource
              xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple"
              xlink:href="svg/poikkiviiva.svg"/>
              <Format>image/svg+xml</Format>
            </ExternalGraphic>
            <Size>3</Size>
          </Graphic>
        </GraphicStroke><!-- dasharray huono-->
        <CssParameter name="stroke-dasharray">2 3</CssParameter>
      </Stroke>
    </LineSymbolizer>                    
  </sld:Rule>
  
  <sld:Rule>
    <Name>3m_ulkoreuna</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>3m_ulkoreuna</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#FF0000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
        <CssParameter name="stroke-dasharray">8 2 1 2 1 2 1 2</CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
  </sld:Rule>    
  
  <sld:Rule>
    <Name>05mm_ristikatko</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>viiva_ristikatko</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
        <CssParameter name="stroke-dasharray">8 2 12 2</CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <Mark>
              <WellKnownName>shape://vertline</WellKnownName>
              <Stroke>
                <CssParameter name="stroke">#000000</CssParameter>
                <CssParameter name="stroke-width">0.5</CssParameter>
                <CssParameter name="stroke-dasharray">8 16</CssParameter>
                <!-- <CssParameter name="stroke-dashoffset">4</CssParameter>-->
              </Stroke>
            </Mark>
            <Size>8</Size>
          </Graphic>
        </GraphicStroke>
      </Stroke>
    </LineSymbolizer>
  </sld:Rule>
  
  <sld:Rule>
    <Name>puurivi_pallot</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>puurivi_viiva</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <Mark>
              <WellKnownName>circle</WellKnownName>
              <Stroke>
                <CssParameter name="stroke">#000000</CssParameter>
                <CssParameter name="stroke-width">0.25</CssParameter>
              </Stroke>
            </Mark>
            <Size>2</Size>
          </Graphic>
        </GraphicStroke>
        <CssParameter name="stroke-dasharray">2 5</CssParameter>
      </Stroke>
    </LineSymbolizer>     
  </sld:Rule>
  
  <sld:Rule>
    <Name>puurivi_sailytettava_pallot_ristit</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>puurivi_sailytettava_viiva</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <Mark>
              <WellKnownName>circle</WellKnownName>
              <Stroke>
                <CssParameter name="stroke">#000000</CssParameter>
                <CssParameter name="stroke-width">0.25</CssParameter>
              </Stroke>
            </Mark>
            <Size>2</Size>
          </Graphic>
        </GraphicStroke>
        <CssParameter name="stroke-dasharray">2 5</CssParameter>
      </Stroke>
    </LineSymbolizer>     
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <Mark>
              <WellKnownName>shape://plus</WellKnownName>
              <Stroke>
                <CssParameter name="stroke">#000000</CssParameter>
                <CssParameter name="stroke-width">0.25</CssParameter>
              </Stroke>
            </Mark>
            <Size>2</Size>
          </Graphic>
        </GraphicStroke>            
        <CssParameter name="stroke-dasharray">2 5</CssParameter>
      </Stroke>
    </LineSymbolizer>     
  </sld:Rule>      
  
  <sld:Rule>
    <Name>ulkoilureitti_pallot</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>ulkoilureitti_viiva</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <Mark>
              <WellKnownName>circle</WellKnownName>
              <Stroke>
                <CssParameter name="stroke">#000000</CssParameter>
                <CssParameter name="stroke-width">0.25</CssParameter>
              </Stroke>
            </Mark>
            <Size>2</Size>
          </Graphic>
        </GraphicStroke>
        <CssParameter name="stroke-dasharray">2 2</CssParameter>
      </Stroke>
    </LineSymbolizer>     
  </sld:Rule>
  
  <sld:Rule>
    <Name>johdoillevarattu_viiva</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>johtoviiva</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>  
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <Mark>
              <WellKnownName>circle</WellKnownName>
              <Stroke>
                <CssParameter name="stroke">#000000</CssParameter>
                <CssParameter name="stroke-width">0.2</CssParameter>
              </Stroke>
            </Mark>
            <Size>1.5</Size>
          </Graphic>
        </GraphicStroke>
        <CssParameter name="stroke-dasharray">1.5 5</CssParameter>
        <!--  <CssParameter name="stroke-dashoffset">7.5</CssParameter>-->
      </Stroke>
    </LineSymbolizer>          
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.2</sld:CssParameter>
        <CssParameter name="stroke-dasharray">1 0.33 1 0.33 1 0.33 1 1.5</CssParameter>
        <CssParameter name="stroke-dashoffset">5</CssParameter>  
      </sld:Stroke>
    </sld:LineSymbolizer>       
  </sld:Rule>    
  
  <sld:Rule>
    <Name>puistopitsi</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>virkistysalue_reuna</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <ExternalGraphic>
              <OnlineResource
              xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple"
              xlink:href="svg/vawe.svg"/>
              <Format>image/svg+xml</Format>
            </ExternalGraphic>
            <Size>4</Size>
          </Graphic>
        </GraphicStroke>
      </Stroke>
    </LineSymbolizer>     
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.2</sld:CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
  </sld:Rule>       
  
  <sld:Rule>
    <Name>liittymakielto</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>liittymakielto_viiva</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <ExternalGraphic>
              <OnlineResource
              xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple"
              xlink:href="svg/rectangle_line.svg"/>
              <Format>image/svg+xml</Format>
            </ExternalGraphic>
            <Size>4</Size>
          </Graphic>
        </GraphicStroke>
      </Stroke>
    </LineSymbolizer>
  </sld:Rule>   
  
  <sld:Rule>
    <Name>melu_aaltoviiva</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>melu_viiva</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <ExternalGraphic>
              <OnlineResource
              xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple"
              xlink:href="svg/curve.svg"/>
              <Format>image/svg+xml</Format>
            </ExternalGraphic>
            <Size>3</Size>
          </Graphic>
        </GraphicStroke>
      </Stroke>
    </LineSymbolizer>     
  </sld:Rule>  
  
  <sld:Rule>
    <Name>rautatiealue_reuna</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>rautatiealue_reuna</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#EE0000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <ExternalGraphic>
              <OnlineResource
              xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple"
              xlink:href="svg/two_dots_filled.svg"/>
              <Format>image/svg+xml</Format>
            </ExternalGraphic>
            <Size>4</Size>
          </Graphic>
        </GraphicStroke>
        <CssParameter name="stroke-dasharray">4 8</CssParameter>
      </Stroke>
    </LineSymbolizer>
  </sld:Rule>   
  
  <sld:Rule>
    <Name>liikennealue_reuna</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>liikennealue_reuna</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#EE0000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <ExternalGraphic>
              <OnlineResource
              xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple"
              xlink:href="svg/two_dots_filled_red.svg"/>             
              <Format>image/svg+xml</Format>
            </ExternalGraphic>
            <Size>4</Size>
          </Graphic>
        </GraphicStroke>
        <CssParameter name="stroke-dasharray">4 8</CssParameter>
      </Stroke>
    </LineSymbolizer>
  </sld:Rule>
  
  <sld:Rule>
    <Name>erityisalue_reuna</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>erityisalue_reuna</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <ExternalGraphic>
              <OnlineResource
              xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple"
              xlink:href="svg/triangle.svg"/>
              <Format>image/svg+xml</Format>
            </ExternalGraphic>
            <Size>4</Size>
          </Graphic>
        </GraphicStroke>
        <CssParameter name="stroke-dasharray">4 8</CssParameter>
      </Stroke>
    </LineSymbolizer>     
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.2</sld:CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
  </sld:Rule>
  
  <!-- ei yhteinen asemakaavakartan kohde -->
  <!--sld:Rule>
    <Name>aita</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>aita</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.2</sld:CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <ExternalGraphic>
              <OnlineResource
              xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple"
              xlink:href="svg/aita.svg"/>
              <Format>image/svg+xml</Format>
            </ExternalGraphic>
            <Size>2</Size>
          </Graphic>
        </GraphicStroke>
        <CssParameter name="stroke-dasharray">2 10</CssParameter>
      </Stroke>
    </LineSymbolizer>                    
  </sld:Rule-->
  
  <sld:Rule>
    <Name>Jalankulku_poikkiviiva3m</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>poikkiviiva1.5</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">3</sld:CssParameter>
        <CssParameter name="stroke-dasharray">0.2 0.8</CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
  </sld:Rule>
  
  <sld:Rule>
    <Name>Jalankulku_poikkiviiva4m</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>poikkiviiva2</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">4</sld:CssParameter>
        <CssParameter name="stroke-dasharray">0.2 0.8</CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
  </sld:Rule>
  
  <sld:Rule>
    <Name>Jalankulku_poikkiviiva5m</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>poikkiviiva2.5</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">5</sld:CssParameter>
        <CssParameter name="stroke-dasharray">0.2 0.8</CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>
  </sld:Rule>
  
  <sld:Rule>
    <Name>Jalankulku_poikkiviiva6m</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>poikkiviiva3</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">6</sld:CssParameter>
        <CssParameter name="stroke-dasharray">0.2 0.8</CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>    
  </sld:Rule>   
  
  <sld:Rule><!-- Musta paksu, ohuempi valkoinen ja hk-teksti square-graphicissa-->
    <Name>Hidaskatu</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>hidaskatu</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">1</sld:CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>    
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.6</sld:CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>      
    <TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Label>hk</Label>
      <Font>
        <CssParameter name="font-family">Monospaced</CssParameter>
        <CssParameter name="font-size">2</CssParameter>
        <CssParameter name="font-style">normal</CssParameter>
        <CssParameter name="font-weight">normal</CssParameter>
      </Font>
      <LabelPlacement>
        <LinePlacement />
      </LabelPlacement>
      <Fill>
        <CssParameter name="fill">#000000</CssParameter>
      </Fill>
      <Graphic>
        <Mark>
          <WellKnownName>square</WellKnownName>
          <Fill>
            <CssParameter name="fill">#FFFFFF</CssParameter>
          </Fill>
        </Mark>
        <Size>4</Size>
      </Graphic>
      <VendorOption name="conflictResolution">false</VendorOption>      
      <VendorOption name="repeat">22</VendorOption>         
    </TextSymbolizer>
  </sld:Rule>

  <sld:Rule><!-- Musta paksu, ohuempi valkoinen ja jl-teksti square-graphicissa-->
    <Name>Joukkoliikennekatu</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>joukkoliikenne</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
        <sld:CssParameter name="stroke-width">1</sld:CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>    
    <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <sld:Stroke>
        <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
        <sld:CssParameter name="stroke-width">0.6</sld:CssParameter>
      </sld:Stroke>
    </sld:LineSymbolizer>      
    <TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Label>jl</Label>
      <Font>
        <CssParameter name="font-family">Monospaced</CssParameter>
        <CssParameter name="font-size">2</CssParameter>
        <CssParameter name="font-style">normal</CssParameter>
        <CssParameter name="font-weight">normal</CssParameter>
      </Font>
      <LabelPlacement>
        <LinePlacement />
      </LabelPlacement>
      <Fill>
        <CssParameter name="fill">#000000</CssParameter>
      </Fill>
      <Graphic>
        <Mark>
          <WellKnownName>square</WellKnownName>
          <Fill>
            <CssParameter name="fill">#FFFFFF</CssParameter>
          </Fill>
        </Mark>
        <Size>4</Size>
      </Graphic>
      <VendorOption name="conflictResolution">false</VendorOption>      
      <VendorOption name="repeat">22</VendorOption>         
    </TextSymbolizer>
  </sld:Rule>    
  
  <sld:Rule>
    <Name>Johtorasite</Name>
    <ogc:Filter>
      <ogc:PropertyIsEqualTo>
        <ogc:PropertyName>luokka</ogc:PropertyName>
        <ogc:Literal>johto_viiva</ogc:Literal>
      </ogc:PropertyIsEqualTo>
    </ogc:Filter>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <CssParameter name="stroke">#000000</CssParameter>
        <CssParameter name="stroke-width">0.25</CssParameter>
        <CssParameter name="stroke-dasharray">0 2 7 0</CssParameter>
      </Stroke>
    </LineSymbolizer>
    <LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
      <Stroke>
        <GraphicStroke>
          <Graphic>
            <Mark>
              <WellKnownName>circle</WellKnownName>
              <Stroke>
                <CssParameter name="stroke">#000000</CssParameter>
                <CssParameter name="stroke-width">0.25</CssParameter>
              </Stroke>
            </Mark>
            <Size>2</Size>
          </Graphic>
        </GraphicStroke>
        <CssParameter name="stroke-dasharray">2 7</CssParameter>
      </Stroke>
    </LineSymbolizer>
  </sld:Rule>
  
</sld:FeatureTypeStyle>
</sld:UserStyle>
