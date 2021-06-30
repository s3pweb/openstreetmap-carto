#!/usr/bin/env bash

FILENAME=$(basename $0)

replace () {
	local from="$1"
	local to="$2"
	find . -type f -not -path "./.git/*" -not -path "./${FILENAME}" -print0 | xargs -0 sed -i '' -e 's/'${from}'/'${to}'/g'
}

replace "#e8efe8" "#e8efe8" # grass color
replace "#e8efe8" "#e8efe8" # scrub
replace "#e8efe8" "#e8efe8" # forest
replace "#e8efe8" "#e8efe8" # park
replace "#e8efe8" "#e8efe8" # allotments
replace "#e8efe8" "#e8efe8" # orchard
replace "#e8efe8" "#e8efe8" # cemetery
replace "#e8efe8" "#e8efe8" # pitch
replace "#e8efe8" "#e8efe8" # golf_course

replace "#a7d5f2" "#a7d5f2" # water-color

replace "#b3d6a7" "#b3d6a7" # forest-text

replace "#457abf" "#457abf" # motorway
replace "#ffffff" "#ffffff" # motorway-casing
replace "#457abf" "#457abf" # motorway-fill
replace "#457abf" "#457abf" # motorway-low-zoom
replace "#457abf" "#457abf" # motorway-low-zoom-casing
replace "#ffffff" "#ffffff" # motorway-shield

replace "#e97f33" "#e97f33" # primary
replace "#a06b00" "#a06b00" # primary-casing
replace "#e97f33" "#e97f33" # primary-fill
replace "#e97f33" "#e97f33" # primary-low-zoom
replace "#e97f33" "#e97f33" # primary-low-zoom-casing
replace "#4c2e00" "#4c2e00" # primary-shield

replace "#707d05" "#707d05" # secondary-casing
replace "#fee533" "#fee533" # secondary-fill
replace "#e8eda0" "#e8eda0" # secondary-low-zoom
replace "#9eae23" "#9eae23" # secondary-low-zoom-casing
replace "#323b00" "#323b00" # secondary-shield

replace "#e93f33" "#e93f33" # trunk
replace "#ad0d02" "#ad0d02" # trunk
replace "#ffffff" "#ffffff" # trunk-casing
replace "#e93f33" "#e93f33" # trunk-fill
replace "#e93f33" "#e93f33" # trunk-low-zoom
replace "#e93f33" "#e93f33" # trunk-low-zoom-casing
replace "#ffffff" "#ffffff" # trunk-shield

cat <<EOF | git apply -
diff --git a/style/roads.mss b/style/roads.mss
index c750ba2..c59bea7 100644
--- a/style/roads.mss
+++ b/style/roads.mss
@@ -60,38 +60,40 @@
 @residential-tunnel-fill: darken(@residential-fill, 5%);
 @living-street-tunnel-fill: lighten(@living-street-fill, 3%);

-@motorway-width-z6:               0.4;
-@trunk-width-z6:                  0.4;
-
-@motorway-width-z7:               0.8;
-@trunk-width-z7:                  0.6;
-
-@motorway-width-z8:               1;
-@trunk-width-z8:                  1;
-@primary-width-z8:                1;
-
-@motorway-width-z9:               1.4;
-@trunk-width-z9:                  1.4;
-@primary-width-z9:                1.4;
-@secondary-width-z9:              1;
-
-@motorway-width-z10:              1.9;
-@trunk-width-z10:                 1.9;
-@primary-width-z10:               1.8;
-@secondary-width-z10:             1.1;
-@tertiary-width-z10:              0.7;
-
-@motorway-width-z11:              2.0;
-@trunk-width-z11:                 1.9;
-@primary-width-z11:               1.8;
-@secondary-width-z11:             1.1;
-@tertiary-width-z11:              0.7;
-
-@motorway-width-z12:              3.5;
-@motorway-link-width-z12:         1.5;
-@trunk-width-z12:                 3.5;
-@trunk-link-width-z12:            1.5;
-@primary-width-z12:               3.5;
+@motorway-width-z6:               1.4;
+@trunk-width-z6:                  1.0;
+@primary-width-z6:                1.0;
+
+@motorway-width-z7:               1.4;
+@trunk-width-z7:                  1.4;
+@primary-width-z7:                1.2;
+
+@motorway-width-z8:               1.8;
+@trunk-width-z8:                  1.8;
+@primary-width-z8:                1.4;
+
+@motorway-width-z9:               2.8;
+@trunk-width-z9:                  2.8;
+@primary-width-z9:                1.8;
+@secondary-width-z9:              1.4;
+
+@motorway-width-z10:              3.0;
+@trunk-width-z10:                 3.0;
+@primary-width-z10:               2.4;
+@secondary-width-z10:             1.8;
+@tertiary-width-z10:              1.0;
+
+@motorway-width-z11:              3.5;
+@trunk-width-z11:                 3.5;
+@primary-width-z11:               3.0;
+@secondary-width-z11:             2.2;
+@tertiary-width-z11:              1.4;
+
+@motorway-width-z12:              5;
+@motorway-link-width-z12:         2.5;
+@trunk-width-z12:                 5;
+@trunk-link-width-z12:            2.5;
+@primary-width-z12:               4.0;
 @primary-link-width-z12:          1.5;
 @secondary-width-z12:             3.5;
 @secondary-link-width-z12:        1.5;
@@ -100,15 +102,15 @@
 @residential-width-z12:           0.5;
 @unclassified-width-z12:          0.8;

-@motorway-width-z13:              6;
+@motorway-width-z13:              8;
 @motorway-link-width-z13:         4;
-@trunk-width-z13:                 6;
-@trunk-link-width-z13:             4;
+@trunk-width-z13:                 8;
+@trunk-link-width-z13:            4;
 @primary-width-z13:               5;
 @primary-link-width-z13:          4;
-@secondary-width-z13:             5;
-@secondary-link-width-z13:        4;
-@tertiary-width-z13:              4;
+@secondary-width-z13:             3;
+@secondary-link-width-z13:        2.5;
+@tertiary-width-z13:              3;
 @tertiary-link-width-z13:         3;
 @residential-width-z13:           2.5;
 @living-street-width-z13:         2;
@@ -119,8 +121,8 @@
 @track-grade1-width-z13:          0.5;
 @track-grade2-width-z13:          0.5;

-@secondary-width-z14:             5;
-@tertiary-width-z14:              5;
+@secondary-width-z14:             3;
+@tertiary-width-z14:              3;
 @residential-width-z14:           3;
 @living-street-width-z14:         3;
 @pedestrian-width-z14:            3;
@@ -134,10 +136,10 @@
 @trunk-link-width-z15:          7.8;
 @primary-width-z15:              10;
 @primary-link-width-z15:        7.8;
-@secondary-width-z15:             9;
+@secondary-width-z15:             8;
 @secondary-link-width-z15:        7;
-@tertiary-width-z15:              9;
-@tertiary-link-width-z15:         7;
+@tertiary-width-z15:              7;
+@tertiary-link-width-z15:         6;
 @residential-width-z15:           5;
 @living-street-width-z15:         5;
 @pedestrian-width-z15:            5;
@@ -149,8 +151,8 @@
 @track-grade2-width-z15:          0.75;
 @steps-width-z15:                 3;

-@secondary-width-z16:            10;
-@tertiary-width-z16:             10;
+@secondary-width-z16:             8;
+@tertiary-width-z16:              8;
 @residential-width-z16:           6;
 @living-street-width-z16:         6;
 @pedestrian-width-z16:            6;
@@ -166,13 +168,13 @@
 @trunk-link-width-z17:           12;
 @primary-width-z17:              18;
 @primary-link-width-z17:         12;
-@secondary-width-z17:            18;
-@secondary-link-width-z17:       12;
-@tertiary-width-z17:             18;
-@tertiary-link-width-z17:        12;
-@residential-width-z17:          12;
-@living-street-width-z17:        12;
-@pedestrian-width-z17:           12;
+@secondary-width-z17:            14;
+@secondary-link-width-z17:       10;
+@tertiary-width-z17:             14;
+@tertiary-link-width-z17:        10;
+@residential-width-z17:           8;
+@living-street-width-z17:         8;
+@pedestrian-width-z17:            8;
 @road-width-z17:                  7;
 @service-width-z17:               7;
 @minor-service-width-z17:         3.5;
@@ -183,13 +185,13 @@
 @trunk-link-width-z18:           13;
 @primary-width-z18:              21;
 @primary-link-width-z18:         13;
-@secondary-width-z18:            21;
+@secondary-width-z18:            16;
 @secondary-link-width-z18:       13;
-@tertiary-width-z18:             21;
+@tertiary-width-z18:             16;
 @tertiary-link-width-z18:        13;
-@residential-width-z18:          13;
-@living-street-width-z18:        13;
-@pedestrian-width-z18:           13;
+@residential-width-z18:          10;
+@living-street-width-z18:        10;
+@pedestrian-width-z18:            8;
 @road-width-z18:                  8.5;
 @service-width-z18:               8.5;
 @minor-service-width-z18:         4.75;
@@ -1152,6 +1154,8 @@ tertiary is rendered from z10 and is not included in osm_planet_roads. */
         [zoom >= 11] { line-width: @trunk-width-z11 + 2 * @lowzoom-halo-width; }
       }
       [feature = 'highway_primary'] {
+        [zoom >= 6] { line-width: @primary-width-z6 + 2 * @lowzoom-halo-width; }
+        [zoom >= 7] { line-width: @primary-width-z7 + 2 * @lowzoom-halo-width; }
         [zoom >= 8] { line-width: @primary-width-z8 + 2 * @lowzoom-halo-width; }
         [zoom >= 9] { line-width: @primary-width-z9 + 2 * @lowzoom-halo-width; }
         [zoom >= 10] { line-width: @primary-width-z10 + 2 * @lowzoom-halo-width; }
@@ -1413,8 +1417,7 @@ tertiary is rendered from z10 and is not included in osm_planet_roads. */
     }

     [feature = 'highway_trunk'] {
-      [zoom >= 6][link != 'yes'],
-      [zoom >= 10] {
+      [zoom >= 6] {
         line-width: @trunk-width-z6;
         line-color: @trunk-low-zoom;
         [zoom >= 7] { line-width: @trunk-width-z7; }
@@ -1464,10 +1467,12 @@ tertiary is rendered from z10 and is not included in osm_planet_roads. */
     }

     [feature = 'highway_primary'] {
-      [zoom >= 8][link != 'yes'],
-      [zoom >= 10] {
-        line-width: @primary-width-z8;
+      [zoom >= 6] {
+        line-width: @primary-width-z6;
         line-color: @primary-low-zoom;
+        [zoom >= 6] { line-width: @primary-width-z6; }
+        [zoom >= 7] { line-width: @primary-width-z7; }
+        [zoom >= 8] { line-width: @primary-width-z8; }
         [zoom >= 9] { line-width: @primary-width-z9; }
         [zoom >= 10] { line-width: @primary-width-z10; }
         [zoom >= 11] { line-width: @primary-width-z11; }
@@ -3200,7 +3205,37 @@ tertiary is rendered from z10 and is not included in osm_planet_roads. */
 }

 #roads-text-name {
-  [highway = 'motorway'],
+  [highway = 'motorway'] {
+
+    [zoom >= 13] {
+      text-name: "[name]";
+      text-size: 8;
+      text-fill: white;
+      text-spacing: 300;
+      text-clip: false;
+      text-placement: line;
+      text-face-name: @book-fonts;
+      text-repeat-distance: @major-highway-text-repeat-distance;
+      [tunnel = 'no'] {
+        text-halo-radius: @standard-halo-radius;
+        [highway = 'motorway'] { text-halo-fill: @motorway-fill; }
+        [highway = 'trunk'] { text-halo-fill: @trunk-fill; }
+        [highway = 'primary'] { text-halo-fill: @primary-fill; }
+      }
+    }
+    [zoom >= 14] {
+      text-size: 9;
+    }
+    [zoom >= 15] {
+      text-size: 10;
+    }
+    [zoom >= 17] {
+      text-size: 11;
+    }
+    [zoom >= 19] {
+      text-size: 12;
+    }
+  }
   [highway = 'trunk'],
   [highway = 'primary'],
   [highway = 'construction'][construction = 'motorway'],
EOF

# clean unneeded layers
cat <<EOF | git apply -
diff --git a/project.mml b/project.mml
index 22869c1..6462f71 100644
--- a/project.mml
+++ b/project.mml
@@ -50,35 +50,6 @@ Stylesheet:
   - style/admin.mss
   - style/addressing.mss
 Layer:
-  - id: landcover-low-zoom
-    geometry: polygon
-    <<: *extents
-    Datasource:
-      <<: *osm2pgsql
-      table: |-
-        (SELECT
-            way, way_pixels,
-            COALESCE(wetland, landuse, "natural") AS feature
-          FROM (SELECT
-              way,
-              ('landuse_' || (CASE WHEN landuse IN ('forest', 'farmland', 'residential', 'commercial', 'retail', 'industrial',
-                                                    'meadow', 'grass', 'village_green', 'vineyard', 'orchard') THEN landuse END)) AS landuse,
-              ('natural_' || (CASE WHEN "natural" IN ('wood', 'sand', 'scree', 'shingle', 'bare_rock', 'heath', 'grassland', 'scrub') THEN "natural" END)) AS "natural",
-              ('wetland_' || (CASE WHEN "natural" IN ('wetland', 'mud') THEN (CASE WHEN "natural" IN ('mud') THEN "natural" ELSE tags->'wetland' END) END)) AS wetland,
-              way_area/NULLIF(POW(!scale_denominator!*0.001*0.28,2),0) AS way_pixels,
-              way_area
-            FROM planet_osm_polygon
-            WHERE (landuse IN ('forest', 'farmland', 'residential', 'commercial', 'retail', 'industrial', 'meadow', 'grass', 'village_green', 'vineyard', 'orchard')
-              OR "natural" IN ('wood', 'wetland', 'mud', 'sand', 'scree', 'shingle', 'bare_rock', 'heath', 'grassland', 'scrub'))
-              AND way_area > 0.01*!pixel_width!::real*!pixel_height!::real
-              AND building IS NULL
-          ) AS features
-          ORDER BY way_area DESC, feature
-        ) AS landcover_low_zoom
-    properties:
-      cache-features: true
-      minzoom: 5
-      maxzoom: 9
   - id: landcover
     geometry: polygon
     <<: *extents
@@ -181,24 +152,6 @@ Layer:
         ) AS water_lines_casing
     properties:
       minzoom: 13
-  - id: water-lines-low-zoom
-    geometry: linestring
-    <<: *extents
-    Datasource:
-      <<: *osm2pgsql
-      table: |-
-        (SELECT
-            way,
-            waterway,
-            CASE WHEN tags->'intermittent' IN ('yes')
-              OR tags->'seasonal' IN ('yes', 'spring', 'summer', 'autumn', 'winter', 'wet_season', 'dry_season')
-              THEN 'yes' ELSE 'no' END AS int_intermittent
-          FROM planet_osm_line
-          WHERE waterway = 'river'
-        ) AS water_lines_low_zoom
-    properties:
-      minzoom: 8
-      maxzoom: 11
   - id: water-lines
     geometry: linestring
     <<: *extents
@@ -538,7 +491,7 @@ Layer:
             AND building IS NULL
         ) AS landuse_overlay
     properties:
-      minzoom: 8
+      minzoom: 10
   - id: tourism-boundary
     geometry: polygon
     <<: *extents
@@ -1123,40 +1076,6 @@ Layer:
         ) AS power_minorline
     properties:
       minzoom: 16
-  - id: power-line
-    geometry: linestring
-    <<: *extents
-    Datasource:
-      <<: *osm2pgsql
-      table: |-
-        (SELECT
-            way
-          FROM planet_osm_line
-          WHERE power = 'line'
-        ) AS power_line
-    properties:
-      minzoom: 14
-  - id: protected-areas
-    geometry: polygon
-    <<: *extents
-    Datasource:
-      <<: *osm2pgsql
-      table: |-
-        (SELECT
-            way,
-            boundary,
-            tags->'protect_class' AS protect_class,
-            way_area/NULLIF(POW(!scale_denominator!*0.001*0.28,2),0) AS way_pixels
-          FROM planet_osm_polygon
-          WHERE (boundary IN ('aboriginal_lands', 'national_park')
-                 OR leisure = 'nature_reserve'
-                 OR (boundary = 'protected_area' AND tags->'protect_class' IN ('1','1a','1b','2','3','4','5','6')))
-            AND building IS NULL
-            AND way_area > 1*!pixel_width!::real*!pixel_height!::real
-        ) AS protected_areas
-    properties:
-      cache-features: true
-      minzoom: 8
   - id: trees
     geometry: polygon
     <<: *extents
@@ -1319,7 +1238,7 @@ Layer:
         ) AS placenames_small
     properties:
       cache-features: true
-      minzoom: 12
+      minzoom: 10
   - id: stations
     geometry: point
     <<: *extents
@@ -1683,25 +1602,6 @@ Layer:
         ) AS amenity_line
     properties:
       minzoom: 16
-  - id: power-towers
-    geometry: point
-    <<: *extents
-    Datasource:
-      <<: *osm2pgsql
-      table: |-
-        (SELECT
-            way,
-            power
-        FROM planet_osm_point
-        WHERE power IN ('tower', 'pole')
-        ORDER BY
-          CASE power
-            WHEN 'tower' THEN 2
-            WHEN 'pole' THEN 1
-          END DESC
-        ) AS power_towers
-    properties:
-      minzoom: 14
   - id: roads-text-ref-low-zoom
     geometry: linestring
     <<: *extents
@@ -2169,26 +2069,6 @@ Layer:
         ) AS admin_text
     properties:
       minzoom: 11
-  - id: protected-areas-text
-    geometry: linestring
-    <<: *extents
-    Datasource:
-      <<: *osm2pgsql
-      table: |-
-        (SELECT
-            way,
-            name,
-            boundary,
-            tags->'protect_class' AS protect_class,
-            way_area/NULLIF(POW(!scale_denominator!*0.001*0.28,2),0) AS way_pixels
-          FROM planet_osm_polygon
-          WHERE (boundary IN ('aboriginal_lands', 'national_park')
-                 OR leisure = 'nature_reserve'
-                 OR (boundary = 'protected_area' AND tags->'protect_class' IN ('1','1a','1b','2','3','4','5','6')))
-            AND name IS NOT NULL
-        ) AS protected_areas_text
-    properties:
-      minzoom: 13
   - id: amenity-low-priority
     geometry: point
     <<: *extents
EOF

# display more cities
cat <<EOF | git apply -
diff --git a/style/placenames.mss b/style/placenames.mss
index 38a7232..85fc7de 100644
--- a/style/placenames.mss
+++ b/style/placenames.mss
@@ -89,7 +89,7 @@
 }

 #capital-names {
-  [zoom >= 4][zoom < 8][population > 600000],
+  [zoom >= 4][zoom < 8][population > 100000],
   [zoom >= 5][zoom < 8] {
     shield-file: url('symbols/place/place-capital-6.svg');
     shield-text-dx: 6;
@@ -154,8 +154,8 @@

 #placenames-medium::high-importance {
   [category = 1][zoom < 14] {
-    [zoom >= 4][zoom < 5][score >= 3000000],
-    [zoom >= 5][zoom < 8][score >= 400000] {
+    [zoom >= 4][zoom < 5][score >= 300000],
+    [zoom >= 5][zoom < 8][score >= 100000] {
       shield-file: url('symbols/place/place-4.svg');
       shield-text-dx: 4;
       shield-text-dy: 4;
@@ -286,7 +286,7 @@

 #placenames-medium::low-importance {
   [category = 2] {
-    [zoom >= 9][zoom < 16] {
+    [zoom >= 8][zoom < 16] {
       text-name: "[name]";
       text-size: 10;
       text-fill: @placenames;
@@ -319,9 +319,9 @@
 }

 #placenames-small::suburb {
-  [place = 'suburb'][zoom >= 12][zoom < 17] {
+  [place = 'suburb'][zoom >= 10][zoom < 17] {
     text-name: "[name]";
-    text-size: 11;
+    text-size: 9;
     text-fill: @placenames;
     text-face-name: @book-fonts;
     text-halo-fill: @standard-halo-fill;
@@ -329,7 +329,7 @@
     text-wrap-width: 55; // 5.0 em
     text-line-spacing: -0.55; // -0.05 em
     text-margin: 7.7; // 0.7 em
-    [zoom >= 13] {
+    [zoom >= 12] {
       text-size: 12;
       text-wrap-width: 60; // 5.0 em
       text-line-spacing: -0.60; // -0.05 em
@@ -354,7 +354,7 @@

 #placenames-small::village {
   [place = 'village'] {
-    [zoom >= 12][zoom < 17] {
+    [zoom >= 10][zoom < 17] {
       text-name: "[name]";
       text-size: 10;
       text-fill: @placenames;
EOF

cat <<EOF | git apply -
diff --git a/project.mml b/project.mml
index 22869c1..3ce037e 100644
--- a/project.mml
+++ b/project.mml
@@ -25,6 +25,8 @@ _parts:
     srs-name: "900913"
     srs: "+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0.0 +k=1.0 +units=m +nadgrids=@null +wktext +no_defs +over"
   osm2pgsql: &osm2pgsql
+    host: "ots_pg"
+    password: "renderer"
     type: "postgis"
     dbname: "gis"
     key_field: ""
EOF
