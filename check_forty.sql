with test as (
select offname, full_address, ST_Transform(wkb_geometry, 3857) from public.gcoder_forty_test
	where lat is not null --and geo_dt = '10.01.20'
),
controll as (
 select osm_id, name, place, way from public.planet_osm_point 
	where place ='town' or place ='city' or place ='village'
),
resultt as (
select * from test a, controll b  where ST_Dwithin(a.st_transform, b.way, 1)
	)
select * from resultt where resultt.offname = resultt.name 
--ST_Equals(a.st_transform, b.way) --ST_Intersects(a.st_transform, b.way) 
--select * from test
--limit 100