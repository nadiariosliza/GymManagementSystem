/*Q1: Find Members Who Have Taken Special Classes & Their Frequency*/
SELECT 
	m.MemberID, 
    m.FirstName, 
    m.LastName, 
    COUNT(sb.BookingID) AS TotalClassesBooked
FROM Members m
JOIN SpecialClassBookings sb ON m.MemberID = sb.MemberID
GROUP BY m.MemberID, m.FirstName, m.LastName
ORDER BY TotalClassesBooked DESC;

/*Q2: Analyzing Monthly trends: Revenue Analysis - Monthly Gym Earnings*/
WITH REVENUE AS (
SELECT 
    DATE_FORMAT(PaymentDate, '%Y-%m') AS Month, 
    SUM(Amount) AS TotalRevenue
FROM Payments
GROUP BY Month
ORDER BY Month
),
Attendance AS (
SELECT 
    DATE_FORMAT(AttendanceDate, '%Y-%m') AS Month, 
    COUNT(*) AS AttendanceCount
FROM Attendance
GROUP BY Month
ORDER BY Month
)
SELECT 
		R.MONTH,
        R.TotalRevenue,
        A.AttendanceCount
FROM REVENUE R
JOIN Attendance A ON A.MONTH=R.MONTH
;

/*Q3: Average Rating of Trainers Based on Workout Plans*/
SELECT 
	t.TrainerID, 
    t.FirstName, 
    t.LastName, 
	AVG(mwp.TrainerRating) AS AvgTrainerRating
FROM Trainers t
JOIN MemberWorkoutPlans mwp ON t.TrainerID = mwp.TrainerID
GROUP BY t.TrainerID, t.FirstName, t.LastName
ORDER BY AvgTrainerRating DESC;


/*Q4: Rank Members by Their Gym Attendance Using a Window Function*/
SELECT 
    MemberID, 
    FirstName, 
    LastName, 
    TotalAttendances, 
    DENSE_RANK() OVER (ORDER BY TotalAttendances DESC) AS AttendanceRank
FROM (
    SELECT 
        m.MemberID, 
        m.FirstName, 
        m.LastName, 
        COUNT(a.AttendanceID) AS TotalAttendances
    FROM Members m
    LEFT JOIN Attendance a ON m.MemberID = a.MemberID
    WHERE a.AttendanceDate >= DATE_SUB(CURRENT_DATE, INTERVAL 3 MONTH) -- Tracking Last 3 months
    GROUP BY m.MemberID, m.FirstName, m.LastName
) AS AttendanceSummary
;

/*Q5: Identify Members at Risk of Churning (Inactive Members)*/
SELECT 
	m.MemberID, 
    m.FirstName, 
    m.LastName, 
    m.MembershipStatus, 
	MAX(a.AttendanceDate) AS LastAttendanceDate,
    m.PhoneNumber,
    m.Email
FROM Members m
LEFT JOIN Attendance a ON m.MemberID = a.MemberID
GROUP BY m.MemberID, m.FirstName, m.LastName, m.MembershipStatus, m.PhoneNumber, m.Email
HAVING DATEDIFF(CURRENT_DATE, MAX(a.AttendanceDate)) > 30 
	OR MAX(a.AttendanceDate) IS NULL
;

