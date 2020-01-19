SELECT key, ogc_fid,
	CASE 
		WHEN %zoom%>8::integer THEN ST_SimplifyPreserveTopology(wkb_geometry, 48::double precision)
		ELSE wkb_geometry
	end wkb_geometry
FROM input.admin_centers_and_districts