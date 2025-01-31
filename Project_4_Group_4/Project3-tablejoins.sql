SELECT 
    cy."ID",
    cy."Year",
    cy."113_Cause_Name",
    cy."Cause_Name" AS "Cause_Name_Year",
    cs."State",
    cd."Deaths",
    cd."Age-adjusted_Death_Rate"
FROM "causeyear" cy
JOIN "causestate" cs ON cy."ID" = cs."ID"
JOIN "causedeath" cd ON cy."ID" = cd."ID" AND cs."State" = cd."State";