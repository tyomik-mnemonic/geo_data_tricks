--SELECT ogc_fid,id,
--	CASE 
--		WHEN %zoom%<5::integer THEN ST_SimplifyPreserveTopology(wkb_geometry, 24::double precision)
--		WHEN %zoom%<8 and %zoom%>4::integer THEN ST_SimplifyPreserveTopology(wkb_geometry, 48::double precision)
--		ELSE wkb_geometry
--	end wkb_geometry
--FROM 
--alter table input.fed_city_and_region
--	add column forc_spl_geom data_type geometry 

--select ST_GeometryType(forc_spl_geom) from input.fed_city_and_region

--SELECT AddGeometryColumn ('input','fed_city_and_region','forc_spl_geom',3857, 'Polygon',2);
--UPDATE input.admin_centers_and_districts
--	set forc_spl_geom =  ST_SimplifyPreserveTopology(wkb_geometry, 24::double precision)
select * from public.planet_osm_point where name = 'Площадь Революции' and railway is not null or
name = 'Щербинка' and railway is not null 

SELECT ogc_fid,key,
	CASE 
	WHEN %zoom%<5::integer THEN
        WHEN %zoom%<8 and %zoom%>4::integer THEN
        ELSE wkb_geometry
	end 
FROM 
alter table input.fed_city_and_region
