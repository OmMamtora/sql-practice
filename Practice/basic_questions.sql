use HospitalDB; 

-- 1. List all patients.
select * from Patients;

-- 2. Get all doctors with their specialization.
select Name, Specialization from Doctors;

-- 3. Find patients who live in 'Mumbai'.
select * from Patients where Address like '%Mumbai%';

-- 4. Show all appointments with status ‘Completed’.
select * from Appointments where status like '%Completed%';

-- 5. Get the names of all medicines prescribed.
select Medicine from Prescriptions;

-- 6. Find all patients born before the year 1995.
 select * from Patients where year(DOB) < 1995;
 
-- 7. List doctors who specialize in anything except 'Pediatrician'.
select * from Doctors Where Specialization not like '%Pediatrician%';

-- 8. Show patients whose name starts with 'A'.
Select * from Patients where Name like 'A%';

-- 9. Get all appointments scheduled in May 2025.
select * from Appointments where Month(AppointmentDate) = 5 AND year(AppointmentDate) = 2025;

-- 10. List patients who don't have a phone number starting with '9'.
select * from Patients where Phone not like '9%';