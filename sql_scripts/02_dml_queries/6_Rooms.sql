USE GymSystem;

ALTER TABLE Rooms MODIFY COLUMN RoomName VARCHAR(50);
ALTER TABLE Rooms MODIFY COLUMN Floor VARCHAR(20);

INSERT INTO Rooms (RoomName, Floor)
VALUES
('Room 101', 'Ground Floor'),
('Room 102', 'Ground Floor'),
('Pulse Room', 'Ground Floor'),
('Room 201', 'Second Floor'),
('Room 202', 'Second Floor'),
('Room 301', 'Third Floor'),
('Room 302', 'Third Floor');