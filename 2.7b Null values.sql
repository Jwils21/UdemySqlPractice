--restrict to certain charachters
SELECT  *
FROM    HumanResources.vEmployee
where MiddleName is null

--restrict to certain charachters
SELECT  *
FROM    HumanResources.vEmployee
where MiddleName is not null and PhoneNumberType = 'cell'