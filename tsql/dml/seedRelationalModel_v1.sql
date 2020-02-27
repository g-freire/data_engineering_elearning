-- MODEL 1 - no preprocessing
INSERT INTO ALUNOS (Order_Number,Queue_Status, Order_Timestamp)
VALUES
	( 0,	1,	1,	'Paulo Francisco'	,'1a. Série',	2019 ),
   	( 1,	2,	1,	'Roberto Sinval'	,'1a. Série', 	2019 ),
GO
SELECT * FROM ALUNOS

-- MODEL 1 - aftger preprocessing
INSERT INTO ALUNOS (Order_Number,Queue_Status, Order_Timestamp)
VALUES
	( 0,	1,	1,	'Paulo Francisco'	,'1a. Série',	2019 ),
   	( 1,	2,	1,	'Roberto Sinval'	,'1a. Série', 	2019 ),
GO
SELECT * FROM ALUNOS