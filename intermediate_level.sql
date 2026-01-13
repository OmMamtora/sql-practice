USE HospitalDB;

-- 1. Show the names of patients and doctors for all scheduled appointments.
select Patients.Name, Doctors.Name from Appointments a 
JOIN Patients on Patients.PatientID = a.PatientID
JOIN Doctors on Doctors.DoctorID = a.DoctorID 
Where Status = 'Scheduled';

-- 2. Find all appointments for ‘Dr. Sneha Singh’.
select * from Appointments a 
Join Doctors on Doctors.DoctorID = a.DoctorID
where Doctors.Name = 'Dr. Sneha Singh';

-- 3. Count the number of appointments by status.
select Status,count(*) from Appointments group by Status;

-- 4. Get a list of patients who have never had a prescription.
select Patients.Name from Patients
LEFT JOIN Appointments a on a.PatientID = Patients.PatientID
LEFT JOIN Prescriptions p on p.AppointmentID = a.AppointmentID
where p.AppointmentID IS NULL;


select * from Appointments;
-- 5. Update the status of appointment ID 2 to 'Completed'.
update Appointments set Status = 'Completed' where AppointmentID = 2;
select * from Appointments;

-- 6. Show all appointments with patient and doctor names included.
select Patients.Name, Doctors.Name, Appointments.* from Appointments 
JOIN Patients on Patients.PatientID = Appointments.PatientID
JOIN Doctors on Doctors.DoctorID = Appointments.DoctorID;

-- 7. Display all prescriptions along with patient and doctor names.
select Patients.Name, Doctors.Name, pr.* from Prescriptions pr
JOIN Appointments on Appointments.AppointmentID = pr.AppointmentID
JOIN Patients on Patients.PatientID = Appointments.PatientID
JOIN Doctors on Doctors.DoctorID = Appointments.DoctorID;

-- 8. List appointments with no prescription issued.
select * from Appointments
LEFT JOIN Prescriptions on Prescriptions.AppointmentID = Appointments.AppointmentID 
Where Prescriptions.PrescriptionID IS NULL;

-- 9. Get doctors who have prescribed ‘Paracetamol’.
select Doctors.Name from Prescriptions pr 
JOIN Appointments on Appointments.AppointmentID = pr.AppointmentID
JOIN Doctors on Doctors.DoctorID = Appointments.DoctorID
Where pr.Medicine = 'Paracetamol';

-- 10. Count how many appointments each patient has.
select Patients.Name, count(Appointments.AppointmentID) from Appointments
JOIN Patients on Patients.PatientID = Appointments.AppointmentID
group by Patients.PatientID, Patients.Name;
