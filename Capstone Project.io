<mxfile host="app.diagrams.net" modified="2022-07-19T23:05:07.086Z" agent="5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36" etag="XLwzYty5A454bWMMkY94" version="20.1.1" type="github">
  <diagram id="P2bm6LPMdAur18eteBQC" name="Page-1">
    <mxGraphModel dx="1038" dy="539" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="840m9I10m8xMKADDcGy6-30" value="Users" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=30;horizontalStack=0;rounded=1;fontSize=14;fontStyle=0;strokeWidth=2;resizeParent=0;resizeLast=1;shadow=0;dashed=0;align=center;" vertex="1" parent="1">
          <mxGeometry x="240" y="40" width="280" height="160" as="geometry" />
        </mxCell>
        <mxCell id="840m9I10m8xMKADDcGy6-39" value="  id INT NOT NULL AUTO_INCREMENT,&#xa;  first_name VARCHAR(50),&#xa;  last_name VARCHAR(50),&#xa;  PRIMARY KEY (id)" style="align=left;strokeColor=none;fillColor=none;spacingLeft=4;fontSize=12;verticalAlign=top;resizable=0;rotatable=0;part=1;" vertex="1" parent="840m9I10m8xMKADDcGy6-30">
          <mxGeometry y="30" width="280" height="130" as="geometry" />
        </mxCell>
        <mxCell id="840m9I10m8xMKADDcGy6-32" value="Menu" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=30;horizontalStack=0;rounded=1;fontSize=14;fontStyle=0;strokeWidth=2;resizeParent=0;resizeLast=1;shadow=0;dashed=0;align=center;" vertex="1" parent="1">
          <mxGeometry x="80" y="240" width="240" height="160" as="geometry" />
        </mxCell>
        <mxCell id="840m9I10m8xMKADDcGy6-33" value="  id INT NOT NULL AUTO_INCREMENT,&#xa;  dining VARCHAR(50),&#xa;  menu_name VARCHAR(50),&#xa;  menu_description VARCHAR(50),&#xa;  menu_price VARCHAR(50),&#xa;  PRIMARY KEY (id)" style="align=left;strokeColor=none;fillColor=none;spacingLeft=4;fontSize=12;verticalAlign=top;resizable=0;rotatable=0;part=1;" vertex="1" parent="840m9I10m8xMKADDcGy6-32">
          <mxGeometry y="30" width="240" height="130" as="geometry" />
        </mxCell>
        <mxCell id="840m9I10m8xMKADDcGy6-35" value="Hours of Operation" style="swimlane;childLayout=stackLayout;horizontal=1;startSize=30;horizontalStack=0;rounded=1;fontSize=14;fontStyle=0;strokeWidth=2;resizeParent=0;resizeLast=1;shadow=0;dashed=0;align=center;" vertex="1" parent="1">
          <mxGeometry x="440" y="240" width="240" height="160" as="geometry" />
        </mxCell>
        <mxCell id="840m9I10m8xMKADDcGy6-36" value="  id INT NOT NULL AUTO_INCREMENT,&#xa;  dining_room VARCHAR(100),&#xa;  day VARCHAR(50),&#xa;  hours VARCHAR(50),&#xa;  PRIMARY KEY (id)" style="align=left;strokeColor=none;fillColor=none;spacingLeft=4;fontSize=12;verticalAlign=top;resizable=0;rotatable=0;part=1;" vertex="1" parent="840m9I10m8xMKADDcGy6-35">
          <mxGeometry y="30" width="240" height="130" as="geometry" />
        </mxCell>
        <mxCell id="840m9I10m8xMKADDcGy6-37" value="" style="edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERoneToMany;rounded=0;entryX=1;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" target="840m9I10m8xMKADDcGy6-33">
          <mxGeometry width="100" height="100" relative="1" as="geometry">
            <mxPoint x="360" y="200" as="sourcePoint" />
            <mxPoint x="190" y="230" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="840m9I10m8xMKADDcGy6-38" value="" style="edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERoneToMany;rounded=0;exitX=1.01;exitY=0.635;exitDx=0;exitDy=0;exitPerimeter=0;" edge="1" parent="1" source="840m9I10m8xMKADDcGy6-39" target="840m9I10m8xMKADDcGy6-35">
          <mxGeometry width="100" height="100" relative="1" as="geometry">
            <mxPoint x="610" y="230" as="sourcePoint" />
            <mxPoint x="640" y="150" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="840m9I10m8xMKADDcGy6-41" value="" style="edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERmany;startArrow=ERmany;rounded=0;exitX=1;exitY=0.75;exitDx=0;exitDy=0;entryX=0;entryY=0.25;entryDx=0;entryDy=0;" edge="1" parent="1" source="840m9I10m8xMKADDcGy6-33" target="840m9I10m8xMKADDcGy6-36">
          <mxGeometry width="100" height="100" relative="1" as="geometry">
            <mxPoint x="340" y="370" as="sourcePoint" />
            <mxPoint x="440" y="270" as="targetPoint" />
          </mxGeometry>
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
