
--explain
with sixtyfive as(
select * from input.fed_city_and_region p, 
	public.planet_osm_point r where ST_Intersects(p.wkb_geometry, r.way) 
	and p.name_base = 'Республика Башкортостан' and (r.place ='town'  
		or r.place ='locality' 
		or r.place ='hamlet'
		or r.place ='village'
		or r.place ='locality'
		or r.place ='suburb'
		or r.place ='neighbourhood'
		or r.place ='quarter')
	--and exists (select from gcoder_sixtyfive_test where wkb_geometry = p.way)
)
--select * from sixtyfive
select aolevel, place, name, offname, full_address, quality, geocoder_result, b.wkb_geometry  from sixtyfive a,
	public.gcoder_sixtyfive_test b
	where ST_DWithin(a.way, b.wkb_geometry, 10) 
	--and b.offname = a.name

--limit 100
