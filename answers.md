2. GDAL/OGR
2.1 Retrieving information about the DEM files [3pt]

Use the command gdalinfo to answer the following questions about the two DEM files, e.g.

    __1.What is the coordinate reference system (EPSG)?__
		World Geodetic System 1984; WGS 84; EPSG 4326
	__2.What is the driver (file format)?__
		GTiff/GeoTIFF
    __3.What is the spatial resolution? (Don't forget to provide the units)__
		Pixel Size = (0.000277777777778,-0.000277777777778) Unit Type = m

2.2 Creating a raster mosaic [4pt]

	Answer the following questions based on the results and the GDAL documentation:

    __What is the difference between the two output files? What is the reason for this?__
		VRT Dateien sind viel kleiner als GeoTIFF, da GeoTIFF eine Raster Datei ist und VRTs ein virtuelles Rasterformat, welches XML basiert ist. gdalbuildvrt erstellt eine XML Datei, die auf die angegebenen Rasterdateien verweist, statt sie tatsächlich zusammenzufügen. 
	
    __What might be an advantage of using gdalbuildvrt instead of gdalmerge?__
		- Bei gdalbuildvrt kann in einer Liste (zum Beispiel in einem Text Dokument) schnell viele Dateien übergeben werden.
		- Dateigröße, da vrt kleiner ist als GeoTIFF