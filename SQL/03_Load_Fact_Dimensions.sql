INSERT INTO dw.DimPatient (PatientID, PatientName, Gender, City)
SELECT PatientID, PatientName, Gender, City
FROM stg.Patients;

INSERT INTO dw.DimDoctor (DoctorID, DoctorName, Specialization, Department)
SELECT DoctorID, DoctorName, Specialization, Department
FROM stg.Doctors;


