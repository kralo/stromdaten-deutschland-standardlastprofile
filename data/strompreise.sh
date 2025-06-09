.separator ";"
.import Gro_handelspreise_202401010000_202501010000_Stunde.csv day_ahead_2024

create view day_ahead_2024_stdlich as
select strftime('%H', datetime(substr(stundeab,7,4)||'-'|| substr(stundeab,4,2)||'-'||substr(stundeab,1,2)||' '||substr(stundeab,12,2)||':00')) as hour, round(avg(euro_mwh),3) as euro_mwh from (select day_ahead_2024."Datum von" as stundeab, day_ahead_2024."Deutschland/Luxemburg [€/MWh] Originalauflösungen" as euro_mwh from day_ahead_2024) group by hour;
