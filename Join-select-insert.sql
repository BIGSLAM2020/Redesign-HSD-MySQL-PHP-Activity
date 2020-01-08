SELECT
    sc.CustomerID, sc.FirstName, sc.LastName, s.SeminarID
FROM
    SEMINAR_CUSTOMER sc
        left JOIN
    SEMINAR s on sc.SeminarID = s.SeminarID
GROUP BY sc.FirstName
ORDER BY sc.CustomerID;

SELECT * FROM SEMINAR_CUSTOMER;

    select * from SEMINAR_CUSTOMER;


    INSERT INTO SEMINAR_CUSTOMER (SeminarID, CustomerID, EmailAddress, LastName, FirstName, Phone, City, State, ZipCode)

    VALUES (1, 18430, 'mayasancho@hsd.com', 'Sancho', 'Maya', 1-646-884-8484, 'The Bronx', 'NY', 10462),
    (2, 34506, 'maysanchez@hsd.com', 'Sanchez', 'May', 1-718-564-8214, 'The Bronx', 'NY', 10467),
    (3, 67778, 'alextenshi@hsd.com', 'Tenshi', 'Alex', 1-646-910-7204, 'Manhattan', 'NY', 10001),
    (4, 13700, 'abrahamabdulkader@hsd.com', 'Abdulkader', 'Abraham', 1-646-206-9260, 'The Bronx', 'NY', 10467),
    (5, 58584, 'tinasolovic@hsd.com', 'Solovic', 'Tina', 1-347-388-3329, 'Brooklyn', 'NY', 11224),
    (6, 67588, 'lilyyang@hsd.com', 'Yang', 'Lily', 1-347-686-5307, 'Manhattan', 'NY', 10002),
    (7, 09804, 'godiramesh@hsd.com', 'Ramesh', 'Godi', 1-929-950-6735, 'Queens', 'NY', 11372),
    (8, 00214, 'kennykomori@hsd.com', 'Kenny', 'Komori', 1-646-670-7505, 'Manhattan', 'NY', 10027),
    (9, 67438, 'ramirezjoe@hsd.com', 'Ramirez', 'Joe', 1-646-383-1979, 'The Bronx', 'NY', 10464),
    (10, 30305, 'colewinston@hsd.com', 'Winston', 'Cole', 1-718-855-1094, 'Queens', 'NY', 11433),
    (11, 21304, 'robbiewilliams@hsd.com', 'Williams', 'Robbie', 1-718-303-5403, 'Staten', 'NY', 10304),
    (12, 43215, 'alexceleti@hsd.com', 'Celeti', 'Alex', 1-347-399-0043, 'The Bronx', 'NY', 10458),
    (13, 93934, 'jimminson@hsd.com', 'Son', 'Jim-min', 1-347-841-1889, 'Queens', 'NY', 11355),
    (14, 90323, 'saralee@hsd.com', 'Lee', 'Sara', 1-212-303-0983, 'Manhattan', 'NY', 10307),
	  (15, 09849, 'boxisong@hsd.com', 'Song', 'Boxi', 1-917-575-9093, 'The Bronx', 'NY', 10466),
    (16, 84049, 'alisanei@hsd.com', 'Sanei', 'Ali', 1-646-584-9943, 'The Bronx', 'NY', 10461),
    (17, 23762, 'maxilopez@hsd.com', 'Lopez', 'Maxi', 1-347-843-4210, 'The Bronx', 'NY', 10465),
    (18, 54998, 'xanocelono@hsd.com', 'Celono', 'Xano', 1-646-775-1877, 'The Bronx', 'NY', 10462);
    SET FOREIGN_KEY_CHECKS = 0;
