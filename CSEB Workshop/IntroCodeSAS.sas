*Select columns and create filters;
PROC SQL ;
	CREATE TABLE WORK.query AS SELECT 'Status'n , DeathCause , Sex , AgeAtStart , 
		Diastolic , Systolic FROM SASHELP.HEART WHERE Systolic>=120 AND Diastolic>=80 
		ORDER BY AgeAtStart DESCENDING;
	RUN;
QUIT;


*Get more info about the dataset;
PROC DATASETS NOLIST NODETAILS;
	CONTENTS DATA=WORK.query OUT=WORK.details;
	RUN;

PROC PRINT DATA=WORK.details;
RUN;

*Print the table directly without the details;
PROC PRINT DATA=WORK.query;
RUN;

