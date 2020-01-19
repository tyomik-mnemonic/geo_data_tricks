--explain 
with xxx as 
	(SELECT osm_id, place, name FROM public.planet_osm_point 
		 where planet_osm_point.place = 'village' or planet_osm_point.place = 'city'
		 or planet_osm_point.place = 'town'or planet_osm_point.place = 'hamlet') 
		 
	 delete from xxx 
	 where translate(upper(xxx.name),'$ЙЦУКЕНГШЩЗХЪЭЖДЛОРПАВЫФЯЧСМИТЬБЮЁ','$') = upper(xxx.name)
	 
	 order by name

--where planet_osm_point.name not LIKE '%[А-яЁё]%'
--limit 500