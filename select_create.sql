--create table input.rf_civil_international as
--select * from public.rf_airports where rf_airports.iata is not null

select * from public.rf_airports where rf_airports.name = 'Аэропорт Домодедово'

--CREATE TABLE films_recent AS
  --SELECT * FROM films WHERE date_prod >= '2002-01-01'; iata
    --delete from public.rf_airports WHERE rf_airports.operator ='Russian Air Force'
    --or rf_airports.operator ='Russian Navy' or rf_airports.operator ='Soviet Air Force'