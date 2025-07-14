/*Scenario 1: Imputing Missing Registration Dates*/

-- Identify the earliest payment date for each member, which serves as a more accurate approximation of their registration date
SELECT 
	M.MEMBERID,
	M.REGISTRATIONDATE, -- Retrieves the default dates
	M.MembershipStatus,
	MIN(P.PAYMENTDATE) PAYMENTDATE -- Retrieves the oldest payment
FROM GYMSYSTEM2.MEMBERS M 
LEFT JOIN GYMSYSTEM2.PAYMENTS P ON M.MEMBERID=P.MEMBERID
GROUP BY 
	M.MEMBERID,
    M.REGISTRATIONDATE,
    M.MembershipStatus
;

-- Update RegistrationDate in Members Table
UPDATE Members SET RegistrationDate = '2020-10-27 00:00:00' WHERE MemberID = 1;
UPDATE Members SET RegistrationDate = '2020-11-17 00:00:00' WHERE MemberID = 2;
UPDATE Members SET RegistrationDate = '2020-12-16 00:00:00' WHERE MemberID = 3;
UPDATE Members SET RegistrationDate = '2021-01-08 00:00:00' WHERE MemberID = 4;
UPDATE Members SET RegistrationDate = '2021-01-12 00:00:00' WHERE MemberID = 5;
UPDATE Members SET RegistrationDate = '2021-01-22 00:00:00' WHERE MemberID = 6;
UPDATE Members SET RegistrationDate = '2021-02-14 00:00:00' WHERE MemberID = 7;
UPDATE Members SET RegistrationDate = '2021-02-28 00:00:00' WHERE MemberID = 8;
UPDATE Members SET RegistrationDate = '2021-03-16 00:00:00' WHERE MemberID = 9;
UPDATE Members SET RegistrationDate = '2021-03-20 00:00:00' WHERE MemberID = 10;
UPDATE Members SET RegistrationDate = '2021-04-10 00:00:00' WHERE MemberID = 11;
UPDATE Members SET RegistrationDate = '2021-04-12 00:00:00' WHERE MemberID = 12;
UPDATE Members SET RegistrationDate = '2021-04-29 00:00:00' WHERE MemberID = 13;
UPDATE Members SET RegistrationDate = '2021-05-15 00:00:00' WHERE MemberID = 14;
UPDATE Members SET RegistrationDate = '2021-05-31 00:00:00' WHERE MemberID = 15;
UPDATE Members SET RegistrationDate = '2021-06-04 00:00:00' WHERE MemberID = 16;
UPDATE Members SET RegistrationDate = '2021-06-19 00:00:00' WHERE MemberID = 17;
UPDATE Members SET RegistrationDate = '2021-07-12 00:00:00' WHERE MemberID = 18;
UPDATE Members SET RegistrationDate = '2021-07-18 00:00:00' WHERE MemberID = 19;
UPDATE Members SET RegistrationDate = '2021-07-19 00:00:00' WHERE MemberID = 20;
UPDATE Members SET RegistrationDate = '2021-08-03 00:00:00' WHERE MemberID = 21;
UPDATE Members SET RegistrationDate = '2021-08-24 00:00:00' WHERE MemberID = 22;
UPDATE Members SET RegistrationDate = '2021-09-21 00:00:00' WHERE MemberID = 23;
UPDATE Members SET RegistrationDate = '2021-10-18 00:00:00' WHERE MemberID = 24;
UPDATE Members SET RegistrationDate = '2021-11-11 00:00:00' WHERE MemberID = 25;
UPDATE Members SET RegistrationDate = '2021-11-30 00:00:00' WHERE MemberID = 26;
UPDATE Members SET RegistrationDate = '2021-12-04 00:00:00' WHERE MemberID = 27;
UPDATE Members SET RegistrationDate = '2021-12-29 00:00:00' WHERE MemberID = 28;
UPDATE Members SET RegistrationDate = '2022-01-24 00:00:00' WHERE MemberID = 29;
UPDATE Members SET RegistrationDate = '2022-02-22 00:00:00' WHERE MemberID = 30;
UPDATE Members SET RegistrationDate = '2022-03-13 00:00:00' WHERE MemberID = 31;
UPDATE Members SET RegistrationDate = '2022-03-22 00:00:00' WHERE MemberID = 32;
UPDATE Members SET RegistrationDate = '2022-04-18 00:00:00' WHERE MemberID = 33;
UPDATE Members SET RegistrationDate = '2022-05-05 00:00:00' WHERE MemberID = 34;
UPDATE Members SET RegistrationDate = '2022-05-28 00:00:00' WHERE MemberID = 35;
UPDATE Members SET RegistrationDate = '2022-06-10 00:00:00' WHERE MemberID = 36;
UPDATE Members SET RegistrationDate = '2022-06-24 00:00:00' WHERE MemberID = 37;
UPDATE Members SET RegistrationDate = '2022-07-19 00:00:00' WHERE MemberID = 38;
UPDATE Members SET RegistrationDate = '2022-08-05 00:00:00' WHERE MemberID = 39;
UPDATE Members SET RegistrationDate = '2022-08-27 00:00:00' WHERE MemberID = 40;
UPDATE Members SET RegistrationDate = '2022-09-10 00:00:00' WHERE MemberID = 41;
UPDATE Members SET RegistrationDate = '2022-10-04 00:00:00' WHERE MemberID = 42;
UPDATE Members SET RegistrationDate = '2022-10-29 00:00:00' WHERE MemberID = 43;
UPDATE Members SET RegistrationDate = '2022-11-09 00:00:00' WHERE MemberID = 44;
UPDATE Members SET RegistrationDate = '2022-11-29 00:00:00' WHERE MemberID = 45;
UPDATE Members SET RegistrationDate = '2022-12-26 00:00:00' WHERE MemberID = 46;
UPDATE Members SET RegistrationDate = '2023-01-18 00:00:00' WHERE MemberID = 47;
UPDATE Members SET RegistrationDate = '2023-02-03 00:00:00' WHERE MemberID = 48;
UPDATE Members SET RegistrationDate = '2023-02-26 00:00:00' WHERE MemberID = 49;
UPDATE Members SET RegistrationDate = '2023-03-25 00:00:00' WHERE MemberID = 50;
UPDATE Members SET RegistrationDate = '2023-04-11 00:00:00' WHERE MemberID = 51;
UPDATE Members SET RegistrationDate = '2023-05-02 00:00:00' WHERE MemberID = 52;
UPDATE Members SET RegistrationDate = '2023-05-26 00:00:00' WHERE MemberID = 53;
UPDATE Members SET RegistrationDate = '2023-06-20 00:00:00' WHERE MemberID = 54;
UPDATE Members SET RegistrationDate = '2023-06-24 00:00:00' WHERE MemberID = 55;
UPDATE Members SET RegistrationDate = '2023-07-04 00:00:00' WHERE MemberID = 56;
UPDATE Members SET RegistrationDate = '2023-07-11 00:00:00' WHERE MemberID = 57;
UPDATE Members SET RegistrationDate = '2023-08-06 00:00:00' WHERE MemberID = 58;
UPDATE Members SET RegistrationDate = '2023-08-27 00:00:00' WHERE MemberID = 59;
UPDATE Members SET RegistrationDate = '2023-09-25 00:00:00' WHERE MemberID = 60;
UPDATE Members SET RegistrationDate = '2023-10-17 00:00:00' WHERE MemberID = 61;
UPDATE Members SET RegistrationDate = '2023-10-19 00:00:00' WHERE MemberID = 62;
UPDATE Members SET RegistrationDate = '2023-11-15 00:00:00' WHERE MemberID = 63;
UPDATE Members SET RegistrationDate = '2023-12-01 00:00:00' WHERE MemberID = 64;
UPDATE Members SET RegistrationDate = '2023-12-18 00:00:00' WHERE MemberID = 65;
UPDATE Members SET RegistrationDate = '2024-01-08 00:00:00' WHERE MemberID = 66;
UPDATE Members SET RegistrationDate = '2024-02-02 00:00:00' WHERE MemberID = 67;
UPDATE Members SET RegistrationDate = '2024-02-07 00:00:00' WHERE MemberID = 68;
UPDATE Members SET RegistrationDate = '2024-02-17 00:00:00' WHERE MemberID = 69;
UPDATE Members SET RegistrationDate = '2024-03-11 00:00:00' WHERE MemberID = 70;
UPDATE Members SET RegistrationDate = '2024-03-25 00:00:00' WHERE MemberID = 71;
UPDATE Members SET RegistrationDate = '2024-04-18 00:00:00' WHERE MemberID = 72;
UPDATE Members SET RegistrationDate = '2024-04-28 00:00:00' WHERE MemberID = 73;
UPDATE Members SET RegistrationDate = '2024-05-12 00:00:00' WHERE MemberID = 74;
UPDATE Members SET RegistrationDate = '2024-05-28 00:00:00' WHERE MemberID = 75;
UPDATE Members SET RegistrationDate = '2024-06-08 00:00:00' WHERE MemberID = 76;
UPDATE Members SET RegistrationDate = '2024-07-02 00:00:00' WHERE MemberID = 77;
UPDATE Members SET RegistrationDate = '2024-07-10 00:00:00' WHERE MemberID = 78;
UPDATE Members SET RegistrationDate = '2024-07-16 00:00:00' WHERE MemberID = 79;
UPDATE Members SET RegistrationDate = '2024-07-20 00:00:00' WHERE MemberID = 80;
UPDATE Members SET RegistrationDate = '2024-08-14 00:00:00' WHERE MemberID = 81;
UPDATE Members SET RegistrationDate = '2024-08-16 00:00:00' WHERE MemberID = 82;
UPDATE Members SET RegistrationDate = '2024-08-21 00:00:00' WHERE MemberID = 83;
UPDATE Members SET RegistrationDate = '2024-08-26 00:00:00' WHERE MemberID = 84;
UPDATE Members SET RegistrationDate = '2024-09-03 00:00:00' WHERE MemberID = 85;
UPDATE Members SET RegistrationDate = '2024-09-09 00:00:00' WHERE MemberID = 86;
UPDATE Members SET RegistrationDate = '2024-09-30 00:00:00' WHERE MemberID = 87;
UPDATE Members SET RegistrationDate = '2024-10-19 00:00:00' WHERE MemberID = 88;
UPDATE Members SET RegistrationDate = '2024-10-21 00:00:00' WHERE MemberID = 89;
UPDATE Members SET RegistrationDate = '2024-11-13 00:00:00' WHERE MemberID = 90;
UPDATE Members SET RegistrationDate = '2024-11-24 00:00:00' WHERE MemberID = 91;
UPDATE Members SET RegistrationDate = '2024-12-09 00:00:00' WHERE MemberID = 92;
UPDATE Members SET RegistrationDate = '2024-12-28 00:00:00' WHERE MemberID = 93;
UPDATE Members SET RegistrationDate = '2025-01-13 00:00:00' WHERE MemberID = 94;
UPDATE Members SET RegistrationDate = '2025-01-31 00:00:00' WHERE MemberID = 95;
UPDATE Members SET RegistrationDate = '2025-02-23 00:00:00' WHERE MemberID = 96;
UPDATE Members SET RegistrationDate = '2025-03-08 00:00:00' WHERE MemberID = 97;
UPDATE Members SET RegistrationDate = '2025-03-13 00:00:00' WHERE MemberID = 98;
UPDATE Members SET RegistrationDate = '2025-04-03 00:00:00' WHERE MemberID = 99;
UPDATE Members SET RegistrationDate = '2025-04-08 00:00:00' WHERE MemberID = 100;


/*Scenario 2: Improving Query Performance with Indexing*/
ALTER TABLE Members
ADD INDEX idx_lastname (LastName);

ALTER TABLE Members
ADD INDEX idx_memberid (MemberID);

/*Scenario 3: Changing Data Types */
ALTER TABLE Members
MODIFY COLUMN PhoneNumber VARCHAR(20);

/*Scenario 4: Enforcing Data Integrity */
ALTER TABLE Memberships
ADD CONSTRAINT unique_membership_type UNIQUE (MembershipType);

/*Scenario 5: Deleting discarded Equipment */
DELETE FROM Equipment
WHERE EquipmentID = 20; -- no longer in use

/*Scenario 6: Handling Data Privacy Requests*/
DELETE FROM Members
WHERE MemberID = 100; 

/*Scenario 7: Cleaning Up Bookings for Canceled Classes */
DELETE FROM SpecialClasses
WHERE ClassID = 10;