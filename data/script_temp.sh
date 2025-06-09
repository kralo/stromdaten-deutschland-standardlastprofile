-- sqlite3 -init fullscript.txt stromdatenroh.sqlite .quit

.mode csv
.import _impfile_ _tab_ 

create view _tab__stdlich as select Datum, 
(coalesce("00:00",0)+coalesce("00:15",0)+coalesce("00:30",0)+coalesce("00:45",0)) as "00",
(coalesce("01:00",0)+coalesce("01:15",0)+coalesce("01:30",0)+coalesce("01:45",0)) as "01",
(coalesce("02:00",0)+coalesce("02:15",0)+coalesce("02:30",0)+coalesce("02:45",0)) as "02",
(coalesce("03:00",0)+coalesce("03:15",0)+coalesce("03:30",0)+coalesce("03:45",0)) as "03",
(coalesce("04:00",0)+coalesce("04:15",0)+coalesce("04:30",0)+coalesce("04:45",0)) as "04",
(coalesce("05:00",0)+coalesce("05:15",0)+coalesce("05:30",0)+coalesce("05:45",0)) as "05",
(coalesce("06:00",0)+coalesce("06:15",0)+coalesce("06:30",0)+coalesce("06:45",0)) as "06",
(coalesce("07:00",0)+coalesce("07:15",0)+coalesce("07:30",0)+coalesce("07:45",0)) as "07",
(coalesce("08:00",0)+coalesce("08:15",0)+coalesce("08:30",0)+coalesce("08:45",0)) as "08",
(coalesce("09:00",0)+coalesce("09:15",0)+coalesce("09:30",0)+coalesce("09:45",0)) as "09",
(coalesce("10:00",0)+coalesce("10:15",0)+coalesce("10:30",0)+coalesce("10:45",0)) as "10",
(coalesce("11:00",0)+coalesce("11:15",0)+coalesce("11:30",0)+coalesce("11:45",0)) as "11",
(coalesce("12:00",0)+coalesce("12:15",0)+coalesce("12:30",0)+coalesce("12:45",0)) as "12",
(coalesce("13:00",0)+coalesce("13:15",0)+coalesce("13:30",0)+coalesce("13:45",0)) as "13",
(coalesce("14:00",0)+coalesce("14:15",0)+coalesce("14:30",0)+coalesce("14:45",0)) as "14",
(coalesce("15:00",0)+coalesce("15:15",0)+coalesce("15:30",0)+coalesce("15:45",0)) as "15",
(coalesce("16:00",0)+coalesce("16:15",0)+coalesce("16:30",0)+coalesce("16:45",0)) as "16",
(coalesce("17:00",0)+coalesce("17:15",0)+coalesce("17:30",0)+coalesce("17:45",0)) as "17",
(coalesce("18:00",0)+coalesce("18:15",0)+coalesce("18:30",0)+coalesce("18:45",0)) as "18",
(coalesce("19:00",0)+coalesce("19:15",0)+coalesce("19:30",0)+coalesce("19:45",0)) as "19",
(coalesce("20:00",0)+coalesce("20:15",0)+coalesce("20:30",0)+coalesce("20:45",0)) as "20",
(coalesce("21:00",0)+coalesce("21:15",0)+coalesce("21:30",0)+coalesce("21:45",0)) as "21",
(coalesce("22:00",0)+coalesce("22:15",0)+coalesce("22:30",0)+coalesce("22:45",0)) as "22",
(coalesce("23:00",0)+coalesce("23:15",0)+coalesce("23:30",0)+coalesce("23:45",0)) as "23" from _tab_ ;

create view _tab__viertelstdlast as
select 
total("00:00") as "00:00",	total("00:15") as "00:15",	total("00:30") as "00:30",	total("00:45") as "00:45",	total("01:00") as "01:00",	total("01:15") as "01:15",	total("01:30") as "01:30",	total("01:45") as "01:45",	
total("02:00") as "02:00",	total("02:15") as "02:15",	total("02:30") as "02:30",	total("02:45") as "02:45",	total("03:00") as "03:00",	total("03:15") as "03:15",	total("03:30") as "03:30",	total("03:45") as "03:45",	
total("04:00") as "04:00",	total("04:15") as "04:15",	total("04:30") as "04:30",	total("04:45") as "04:45",	total("05:00") as "05:00",	total("05:15") as "05:15",	total("05:30") as "05:30",	total("05:45") as "05:45",	
total("06:00") as "06:00",	total("06:15") as "06:15",	total("06:30") as "06:30",	total("06:45") as "06:45",	total("07:00") as "07:00",	total("07:15") as "07:15",	total("07:30") as "07:30",	total("07:45") as "07:45",	
total("08:00") as "08:00",	total("08:15") as "08:15",	total("08:30") as "08:30",	total("08:45") as "08:45",	total("09:00") as "09:00",	total("09:15") as "09:15",	total("09:30") as "09:30",	total("09:45") as "09:45",	
total("10:00") as "10:00",	total("10:15") as "10:15",	total("10:30") as "10:30",	total("10:45") as "10:45",	total("11:00") as "11:00",	total("11:15") as "11:15",	total("11:30") as "11:30",	total("11:45") as "11:45",	
total("12:00") as "12:00",	total("12:15") as "12:15",	total("12:30") as "12:30",	total("12:45") as "12:45",	total("13:00") as "13:00",	total("13:15") as "13:15",	total("13:30") as "13:30",	total("13:45") as "13:45",	
total("14:00") as "14:00",	total("14:15") as "14:15",	total("14:30") as "14:30",	total("14:45") as "14:45",	total("15:00") as "15:00",	total("15:15") as "15:15",	total("15:30") as "15:30",	total("15:45") as "15:45",	
total("16:00") as "16:00",	total("16:15") as "16:15",	total("16:30") as "16:30",	total("16:45") as "16:45",	total("17:00") as "17:00",	total("17:15") as "17:15",	total("17:30") as "17:30",	total("17:45") as "17:45",	
total("18:00") as "18:00",	total("18:15") as "18:15",	total("18:30") as "18:30",	total("18:45") as "18:45",	total("19:00") as "19:00",	total("19:15") as "19:15",	total("19:30") as "19:30",	total("19:45") as "19:45",	
total("20:00") as "20:00",	total("20:15") as "20:15",	total("20:30") as "20:30",	total("20:45") as "20:45",	total("21:00") as "21:00",	total("21:15") as "21:15",	total("21:30") as "21:30",	total("21:45") as "21:45",	
total("22:00") as "22:00",	total("22:15") as "22:15",	total("22:30") as "22:30",	total("22:45") as "22:45",	total("23:00") as "23:00",	total("23:15") as "23:15",	total("23:30") as "23:30",	total("23:45") as "23:45"
from _tab_ ;

create view _tab__stdlast as
select 
total("00") as "00",
total("01") as "01",
total("02") as "02",
total("03") as "03",
total("04") as "04",
total("05") as "05",
total("06") as "06",
total("07") as "07",
total("08") as "08",
total("09") as "09",
total("10") as "10",
total("11") as "11",
total("12") as "12",
total("13") as "13",
total("14") as "14",
total("15") as "15",
total("16") as "16",
total("17") as "17",
total("18") as "18",
total("19") as "19",
total("20") as "20",
total("21") as "21",
total("22") as "22",
total("23") as "23" from _tab__stdlich;



create view _tab__stdlast_Monat as
select strftime('%m', Datum) as Monat,
count("00") as Tage,
 total("00") as "00",
total("01") as "01",
total("02") as "02",
total("03") as "03",
total("04") as "04",
total("05") as "05",
total("06") as "06",
total("07") as "07",
total("08") as "08",
total("09") as "09",
total("10") as "10",
total("11") as "11",
total("12") as "12",
total("13") as "13",
total("14") as "14",
total("15") as "15",
total("16") as "16",
total("17") as "17",
total("18") as "18",
total("19") as "19",
total("20") as "20",
total("21") as "21",
total("22") as "22",
total("23") as "23" from _tab__stdlich group by Monat;

-- zur Plausibilisierung
select "plausi: ";
.headers on
.mode table
select WoTaIdx, count(*) from _tab_ group by WoTaIdx;

create view _tab__stdlast_Monat_solarschwach as
select solarschwach,
count("00") as Tage,
total("00") as "00",
total("01") as "01",
total("02") as "02",
total("03") as "03",
total("04") as "04",
total("05") as "05",
total("06") as "06",
total("07") as "07",
total("08") as "08",
total("09") as "09",
total("10") as "10",
total("11") as "11",
total("12") as "12",
total("13") as "13",
total("14") as "14",
total("15") as "15",
total("16") as "16",
total("17") as "17",
total("18") as "18",
total("19") as "19",
total("20") as "20",
total("21") as "21",
total("22") as "22",
total("23") as "23" from (select h.*, case when (cast(strftime('%m', Datum) as integer)=12) and (cast(strftime('%e', datum) as integer)>12) and (cast(strftime('%e', datum) as integer)<30) then 1 else 0 end solarschwach from  _tab__stdlich h) group by solarschwach;

