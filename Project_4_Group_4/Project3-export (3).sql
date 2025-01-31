-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Physical

CREATE TABLE "causeyear" (
    "ID" BIGINT NOT NULL,
    "Year" INT NOT NULL,
    "113_Cause_Name" VARCHAR(80) NOT NULL,
    "Cause_Name" VARCHAR(80) NOT NULL,
    CONSTRAINT "pk_causeyear" PRIMARY KEY ("ID")
);

CREATE TABLE "causestate" (
    "ID" BIGINT NOT NULL,
    "Cause_Name" VARCHAR(80) NOT NULL,
    "State" VARCHAR(80) NOT NULL,
    CONSTRAINT "pk_causestate" PRIMARY KEY ("ID") 
);

CREATE TABLE "causedeath" (
    "ID" BIGINT NOT NULL,
    "Cause_Name" VARCHAR(80) NOT NULL,
    "Deaths" BIGINT NOT NULL,
    "Age-adjusted_Death_Rate" FLOAT NOT NULL,  
    "State" VARCHAR(80) NOT NULL
);

-- Adding foreign keys
ALTER TABLE "causestate" 
    ADD CONSTRAINT "fk_causestate_ID" FOREIGN KEY("ID")
    REFERENCES "causeyear" ("ID");

ALTER TABLE "causedeath" 
    ADD CONSTRAINT "fk_causedeath_ID" FOREIGN KEY("ID")
    REFERENCES "causeyear" ("ID");