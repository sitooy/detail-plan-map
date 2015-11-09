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
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
