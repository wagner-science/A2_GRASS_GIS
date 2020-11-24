# Assignment 2: GIS analyses using GRASS GIS

**Submission deadline is Friday, December 11 2020 through GitHub Classroom.**

In this assignment you will use the program GRASS GIS to conduct a geospatial analysis using raster and vector data. 

This is a **group assignment** in which you are supposed to solve these exercises in pairs of two students. Material and submission will be handled through GitHub Classroom. 

Write the answers to the questions in a new markdown file called answers.md. Please use Markdown syntax to format your document.  

### Data

You will need the following data sets which can be downloaded [here]() 

* [Global Human Settlement Layer: Population](https://ghsl.jrc.ec.europa.eu/ghs_pop2019.php) (GHS\_POP\_E2015\_GLOBE\_R2019A\_54009\_250\_V1\_0\_18\_3.tif)
* GDAM Administrative districts of Germany (gadm28\_adm2\_germany.shp)
* Motorways extracted from OSM (motorways.shp)

### 1. Create new location in GRASS GIS

Create a new location called "BadenWuerttemberg". The coordinate references system should be the same as the raster file *GHS\_POP\_E2015\_GLOBE\_R2019A\_54009\_250\_V1\_0\_18\_3.tif*. 

### 2. Import data

Import the following data sets into the **PERMANENT** mapset. Use the commands `v.import`, `v.in.ogr`, `r.import` or `r.in.ogr`.

##### 2.1 Motorways 

Import the motorways.shp into the PERMANENT mapset. 

##### 2.2 Administrative Districts of Baden-Württemberg

Import **only** the districts of Baden-Württemberg from the gadm28\_adm2\_germany.shp into the PERMANENT mapset.

**Hint:** You need to convert gadm28\_adm2\_germany.shp first to the correct coordinate reference system. 

##### 2.3 Global Human Settlement Layer

If you haven't done so during the creation of the new location, import the Global Human Settlement Layer. 

### 3. Calculate the total population of the districts

The goal of this section is to calculate the total population of each district. 

##### 3.1 Set the region

Set the region to the extent of the districts layer. Make sure that the resolution of the region is 250 by 250 meters. Use the `g.region` tool. 

##### 3.2 Rasterize the districts

In order to calculate zonal statistics in GRASS GIS, the districts need to be in raster format. Rasterize the districts. The cells of the raster should contain the OBJECTID of the district features. 

##### 3.3 Calculate the population of each district 

Use the tool `r.stats.zonal` to calculate the total population of each district. The Global Human Settlement Layer contains the number of people living in each cell. Choose the aggregation method accordingly. 

####3.4. Evaluate the population estimate 

Use the "Query raster/vector maps" tool in the top menu of the Map Display window and click on the districts in the map to get the calculated population numbers of each one. How good is the population estimate of the Global Human Settlement Layer compared to official data?   


### 4. Calculate total population living within 1km of motorways 

Use the same method as above to calculate the total population living within 1 kilometer distance to the motorways. Set the region to the extent of the motorways layer before you start processing. Print the population value using the `r.stats` tool. 

### 5. Convert the script to Python 

1. Convert the workflow described in section 4 to a Python script. 

2. Use a for loop to calculate the population living close to motorways using different buffer distances: 250, 500, 1000, 2500 and 5000 meters.


#### References

[GRASS GIS 7.8 Manual](https://grass.osgeo.org/grass78/manuals/index.html/)  
