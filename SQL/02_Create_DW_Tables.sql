CREATE SCHEMA dw;
GO

CREATE TABLE dw.DimPatient (
    PatientKey INT IDENTITY PRIMARY KEY,
    PatientID INT,
    PatientName VARCHAR(100),
    Gender CHAR(1),
    City VARCHAR(50)
);

CREATE TABLE dw.DimDoctor (
    DoctorKey INT IDENTITY PRIMARY KEY,
    DoctorID INT,
    DoctorName VARCHAR(100),
    Specialization VARCHAR(50),
    Department VARCHAR(50)
);

CREATE TABLE dw.DimDate (
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    Year INT,
    Month INT,
    Day INT
);

CREATE TABLE dw.FactVisits (
    VisitKey INT IDENTITY PRIMARY KEY,
    PatientKey INT,
    DoctorKey INT,
    DateKey INT,
    TreatmentCost DECIMAL(10,2)
);

