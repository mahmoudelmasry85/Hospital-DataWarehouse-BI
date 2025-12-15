CREATE SCHEMA stg;
GO

CREATE TABLE stg.Patients (
    PatientID INT,
    PatientName VARCHAR(100),
    Gender CHAR(1),
    DateOfBirth DATE,
    City VARCHAR(50)
);

CREATE TABLE stg.Doctors (
    DoctorID INT,
    DoctorName VARCHAR(100),
    Specialization VARCHAR(50),
    Department VARCHAR(50)
);

CREATE TABLE stg.Departments (
    DepartmentID INT,
    DepartmentName VARCHAR(50)
);

CREATE TABLE stg.Visits (
    VisitID INT,
    PatientID INT,
    DoctorID INT,
    VisitDate DATE,
    TreatmentCost DECIMAL(10,2)
);


