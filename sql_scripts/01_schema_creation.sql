/*DROP DATABASE IF EXISTS GymSystem;
SHOW DATABASES;
*/
CREATE DATABASE GymSystem;
USE GymSystem;

-- Members Table
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    DateOfBirth DATE NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Address TEXT,
    MembershipStatus ENUM('Active', 'Inactive') DEFAULT 'Active',
    RegistrationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Memberships Table
CREATE TABLE Memberships (
    MembershipID INT AUTO_INCREMENT PRIMARY KEY,
    MembershipType VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    DurationMonths INT,
    Status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

-- Payments Table
CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT NOT NULL,
    MembershipID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PaymentMethod ENUM('Cash', 'Card', 'Online'),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID) ON DELETE CASCADE,
    FOREIGN KEY (MembershipID) REFERENCES Memberships(MembershipID) ON DELETE CASCADE
);

-- Attendance Table
CREATE TABLE Attendance (
    AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT NOT NULL,
    AttendanceDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID) ON DELETE CASCADE
);

-- Special Classes 
CREATE TABLE Rooms (
    RoomID INT AUTO_INCREMENT PRIMARY KEY,
    RoomName ENUM('Room 101', 'Room 201', 'Room 202', 'Room 301','Pulse Room'),
    Floor ENUM('Ground', 'Second Floor', 'Third Floor')
);

-- Trainers Table
CREATE TABLE Trainers (
    TrainerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,    
    PhoneNumber VARCHAR(15) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Specialization TEXT,
    Status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

CREATE TABLE SpecialClasses (
    ClassID INT AUTO_INCREMENT PRIMARY KEY,
    ClassName VARCHAR(100) NOT NULL,
    Schedule DATETIME NOT NULL,
    TrainerID INT NOT NULL,
    RoomID INT NOT NULL,
    MaxParticipants INT NOT NULL,
    Status ENUM('Scheduled', 'Canceled') DEFAULT 'Scheduled',
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID) ON DELETE CASCADE,
	FOREIGN KEY (TrainerID) REFERENCES Trainers(TrainerID) ON DELETE CASCADE
);


-- Special Class Bookings
CREATE TABLE SpecialClassBookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    ClassID INT,
    BookingDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID) ON DELETE CASCADE,
    FOREIGN KEY (ClassID) REFERENCES SpecialClasses(ClassID) ON DELETE CASCADE
);

-- Workout Plans Table
CREATE TABLE WorkoutPlans (
    PlanID INT AUTO_INCREMENT PRIMARY KEY,
    PlanName VARCHAR(100),
    Description TEXT,
    DurationWeeks INT
);

-- Member Workout Plans Table
CREATE TABLE MemberWorkoutPlans (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT NOT NULL,
    PlanID INT NOT NULL,
    TrainerID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NULL,
    Status ENUM('Active', 'Completed', 'Inactive') DEFAULT 'Active',
    TrainerRating INT CHECK (TrainerRating BETWEEN 1 AND 10),
    PlanRating INT CHECK (PlanRating BETWEEN 1 AND 10),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID) ON DELETE CASCADE,
    FOREIGN KEY (PlanID) REFERENCES WorkoutPlans(PlanID) ON DELETE CASCADE,
    FOREIGN KEY (TrainerID) REFERENCES Trainers(TrainerID) ON DELETE CASCADE
);

-- Equipment Table
CREATE TABLE Equipment (
    EquipmentID INT AUTO_INCREMENT PRIMARY KEY,
    EquipmentName VARCHAR(100),
    PurchaseDate DATE,
    LastMaintenance DATE
);

-- Maintenance Personnel Table
CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(100)
);

-- Equipment Maintenance History Table
CREATE TABLE Maintenance (
    MaintenanceID INT AUTO_INCREMENT PRIMARY KEY,
    EquipmentID INT,
    StaffID INT,
    MaintenanceDate DATE,
    Notes TEXT,
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID) ON DELETE CASCADE,
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID) ON DELETE CASCADE
);
