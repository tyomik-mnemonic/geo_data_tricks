with sixtyfive as(
select * from public.planet_osm_point p, 
input.fed_city_and_region r where ST_Intersects(p.way, r.wkb_geometry) 
and r.name_base = 'Республика Башкортостан'
)
select * from sixtyfive where 
	sixtyfive.place ='town' 
	or sixtyfive.place ='locality' 
	or sixtyfive.place ='hamlet'
	or sixtyfive.place ='village'
	or sixtyfive.place ='locality'
	or sixtyfive.place ='suburb'
	or sixtyfive.place ='neighbourhood'
	or sixtyfive.place ='quarter'