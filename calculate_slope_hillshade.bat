ogr2ogr -where "\"NAME_2\" == \"Izola\"" -f "ESRI Shapefile" izola.shp gadm36_SVN.gpkg gadm36_SVN_2
gdalwarp -t_srs EPSG:32632 -cutline izola.shp dem_merge.tif dem_merge_clip_32632.tif -crop_to_cutline -dstnodata 0
gdaldem slope dem_merge_clip_32632.tif dem_slope.tif
gdaldem hillshade dem_merge_clip_32632.tif dem_hillshade.tif