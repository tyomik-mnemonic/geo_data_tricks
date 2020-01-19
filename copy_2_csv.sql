
--alter user fias_owner WITH SUPERUSER 
--Copy (select * from fias_data_load.locations order by random() limit 25000) To '/tmp/test25k.csv' With CSV HEADER

alter user fias_owner WITH SUPERUSER 
Copy (select * from locations where response::text LIKE '%"Level":70,"%' and quality = 4 limit 200) To '/tmp/test25k.csv' With CSV HEADER