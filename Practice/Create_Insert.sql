CREATE DATABASE IF NOT EXISTS HospitalDB;
USE HospitalDB;


CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Gender VARCHAR(10),
    DOB DATE,
    Phone VARCHAR(15),
    Address VARCHAR(200)
);

CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Specialization VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Status ENUM('Scheduled', 'Completed', 'Cancelled'),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Prescriptions (
    PrescriptionID INT AUTO_INCREMENT PRIMARY KEY,
    AppointmentID INT,
    Medicine VARCHAR(100),
    Dosage VARCHAR(50),
    Duration VARCHAR(50),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);

-- Insert sample patients
INSERT INTO Patients (Name, Gender, DOB, Phone, Address) VALUES
('Aarav Sharma', 'Male', '1990-05-12', '9999988888', 'Delhi'),
('Priya Mehta', 'Female', '1985-10-23', '8888877777', 'Mumbai'),
('Karan Patel', 'Male', '2000-03-15', '7777766666', 'Ahmedabad'),
('Anjali Rao', 'Female', '1993-07-07', '6666655555', 'Bangalore');


INSERT INTO Doctors (Name, Specialization, Phone) VALUES
('Dr. Sneha Singh', 'Cardiologist', '9999990000'),
('Dr. Rajeev Kumar', 'Dermatologist', '8888881111'),
('Dr. Kavita Shah', 'Pediatrician', '7777772222');

-- Insert sample appointments
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Status) VALUES
(1, 1, '2025-05-10', 'Completed'),
(2, 2, '2025-05-15', 'Scheduled'),
(3, 1, '2025-04-20', 'Cancelled'),
(4, 3, '2025-05-18', 'Completed');

-- Insert sample prescriptions
INSERT INTO Prescriptions (AppointmentID, Medicine, Dosage, Duration) VALUES
(1, 'Atorvastatin', '10mg', '30 days'),
(4, 'Paracetamol', '500mg', '5 days');
