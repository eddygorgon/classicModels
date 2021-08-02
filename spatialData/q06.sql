# What is the distance between the Paris and Boston offices?
# To be precise for long distances, the distance in kilometers, as the crow flies, 
# between two points when you have latitude and longitude, is 
# (ACOS(SIN(lat1*PI()/180)*SIN(lat2*PI()/180)+COS(lat1*PI()/180)*COS(lat2*PI()/180)* 
# COS((lon1-lon2)*PI()/180))*180/PI())*60*1.8532

SELECT @lat1:= ST_X(officeLocation) AS lat1 ,@lon1:= ST_Y(officeLocation) AS lon1
FROM Offices
WHERE city='Paris';

SELECT @lat2:= ST_X(officeLocation) AS lat2 ,@lon2:= ST_Y(officeLocation) AS lon2
FROM Offices
WHERE city='Boston';

SELECT DISTINCT ROUND((ACOS(SIN(@lat1*PI()/180)*SIN(@lat2*PI()/180)+COS(@lat1*PI()/180)*COS(@lat2*PI()/180)* 
COS((@lon1-@lon2)*PI()/180))*180/PI())*60*1.8532,0) AS 'Distance'
FROM Offices