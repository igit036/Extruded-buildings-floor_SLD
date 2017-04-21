<?xml version='1.0' encoding='ISO-8859-1'?>
<StyledLayerDescriptor version='1.0.0' xmlns='http://www.opengis.net/sld' xmlns:ogc='http://www.opengis.net/ogc'
xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance'
xsi:schemaLocation='http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd'>
 <NamedLayer>
  <Name>Extruded Buildings</Name>
   <UserStyle>
    <Title>Pseudo 3D polygon style</Title>
     <Abstract>Example code</Abstract>
      
<!--  The following rule adds the building shadows  -->

      <FeatureTypeStyle>
       <Rule>     
        <PolygonSymbolizer>
         <Geometry>
          <ogc:Function name='offset'>
           <ogc:PropertyName>the_geom</ogc:PropertyName>
           <ogc:PropertyName>floor</ogc:PropertyName>
           <ogc:PropertyName>-floor</ogc:PropertyName>                
          </ogc:Function>
         </Geometry>
         <Fill>
          <CssParameter name='fill'>#555555</CssParameter>
          <CssParameter name='opacity'>0.25</CssParameter>
         </Fill>
        </PolygonSymbolizer>
       </Rule>
      </FeatureTypeStyle>  

<!--  The following rule extrudes the polygons to create the sides of the buildings  -->
      
      <FeatureTypeStyle>
       <Rule>  
        <PolygonSymbolizer>
         <Geometry>
          <ogc:Function name='isometric'>
           <ogc:PropertyName>the_geom</ogc:PropertyName>
           <ogc:PropertyName>floor</ogc:PropertyName>
          </ogc:Function>
         </Geometry>
         <Fill>
          <CssParameter name='fill'>#999797</CssParameter>
         </Fill>
         <Stroke>
          <CssParameter name='stroke'>#787878</CssParameter>
          <CssParameter name='stroke-width'>0.1</CssParameter>   
         </Stroke>
        </PolygonSymbolizer>
       </Rule>
      </FeatureTypeStyle>

<!--  The following rule adds a roof to the buildings  -->
      
      <FeatureTypeStyle>
       <Rule>  
        <PolygonSymbolizer>
         <Geometry>
          <ogc:Function name='offset'>
            <ogc:PropertyName>the_geom</ogc:PropertyName>
            <ogc:Literal>0</ogc:Literal>
            <ogc:PropertyName>floor</ogc:PropertyName>
           </ogc:Function>
          </Geometry>
           <Fill>
            <CssParameter name='fill'>#D5CECE</CssParameter>
           </Fill>
           <Stroke>
            <CssParameter name='stroke'>#BEB2B2</CssParameter>
            <CssParameter name='stroke-width'>0.3</CssParameter>
           </Stroke>
          </PolygonSymbolizer>
         </Rule>
        </FeatureTypeStyle>
      
       </UserStyle>
      </NamedLayer>
</StyledLayerDescriptor>