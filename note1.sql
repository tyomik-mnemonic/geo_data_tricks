--create temporary table centss as
  --select * from input.admin_centers_and_districts_october where admin_centers_and_districts_october.manualcentrd is not null

--delete  from input.admin_centers_and_districts_october where admin_centers_and_districts_october.manualcentrd is not null
--SELECT AddGeometryColumn ('input','admin_centers_and_districts','manualcentrd',3857,'POINT',2);


INSERT INTO input.admin_centers_and_districts(ogc_fid, admin_lv, name_base, nn, name_nsi, new_name, key, vladelec, poryadok, Сod_okato, kodr, version, date1, date2, region, wkb_geometry, manualcentrd)
SELECT ogc_fid, admin_lv, name_base, nn, name_nsi, new_name, key, vladelec, poryadok, Сod_okato, kodr, version, date1, date2, region, geom, manualcentrd
FROM input.admin_centers_and_districts_october
--where geom is not null;


--INSERT INTO table(column1,column2,...)
--SELECT column1,column2,...
--FROM another_table
--WHERE condition;
  
--admin_centers_and_districts_october.manualcentrd

--select * from input.admin_centers_and_districts_october
--limit 3000

--update input.admin_centers_and_districts_october
    --set manualcentrd = centss.manualcentrd
    --from centss
    --where admin_centers_and_districts_october.key = centss.key

--select * from public.rf_airports where rf_airports.name = 'Аэропорт Домодедово'

--CREATE TABLE films_recent AS
  --SELECT * FROM films WHERE date_prod >= '2002-01-01'; iata
    --delete from public.rf_airports WHERE rf_airports.operator ='Russian Air Force'
    --or rf_airports.operator ='Russian Navy' or rf_airports.operator ='Soviet Air Force'
	--select * from input.admin_centers_and_districts_october where admin_centers_and_districts_october.manualcentrd is null
--where admin_centers_and_districts_october.fid


--delete  from input.admin_centers_and_districts where admin_centers_and_districts.key is not null