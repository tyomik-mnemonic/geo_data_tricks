import requests
fedcit_1 = requests.get('http://front-geo-dev.gasps.local/geoserver/test_osm/ows?service=wfs&version=1.0.0&request=GetFeature&typeName=test_osm:fed_city_and_region&outputFormat=application/json&viewParams=zoom:1')
fedcit_7 = requests.get('http://front-geo-dev.gasps.local/geoserver/test_osm/ows?service=wfs&version=1.0.0&request=GetFeature&typeName=test_osm:fed_city_and_region&outputFormat=application/json&viewParams=zoom:7')

zl_1 = open('/home/user/raster_dir/gaspsenv/zl_1.geojson', 'w')
zl_2 = open('/home/user/raster_dir/gaspsenv/zl_2.geojson', 'w')

fc_1 = fedcit_1.json()
zl_1.write(fc_1)

fc_2 = fedcit_2.json()
zl_2.write(fc_2)

