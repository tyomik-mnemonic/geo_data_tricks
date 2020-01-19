CREATE VIEW fortly_lvl_full_well as(
	with city as (select name, admin_level, place, way from public.planet_osm_point
			 where place='city' or
			 place='city'  or
			 place='town'  or
			 place='village'  or
			 place='hamlet'  or
			 place='city' 
	)
	select * from public.gcoder_forty_test a, city b where not ST_Equals(a.wkb_geometry, b.way)-- and a.offname = b.name
)


--explain
--Create view SeventyTest as ( 
--with region as (select * from input.fed_city_and_region where name_base like '%Удмурт%'),
--street as (select name, highway, admin_level, way from public.planet_osm_line where highway is not null)

--select * from street a, region b where St_Crosses(a.way, b.wkb_geometry)
--)
--select * from seventytest 
--limit 5

--select * from region 

--order by name_base
--lines as (select * from public.planet_osm_line)

--select * from lines r, region p where ST_Crosses(p.wkb_geometry, r.way) 


--with sixtyfive as(
--select * from input.fed_city_and_region p, 
--	public.planet_osm_line r where ST_Intersects(p.wkb_geometry, r.way) 
	--and p.name_base = 'Республика Удмуртия' and (r.highway is not null and r.name is not null) --r.place ='town'  
		--or r.place ='locality' 
		--or r.place ='hamlet'
		--or r.place ='village'
		--or r.place ='locality'
		--or r.place ='suburb'
		--or r.place ='neighbourhood'
		--or r.place ='quarter')
	--and exists (select from gcoder_sixtyfive_test where wkb_geometry = p.way)
--)
--select * from sixtyfive
--	select * from sixtyfive a,
--	public.gcoder_sixtyfive_test b
--	where ST_DWithin(a.way, b.wkb_geometry, 10) 
--	and b.offname = a.name

--limit 100
