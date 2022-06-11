-- TASK 1

-- 1.1 CONSTARINTLERI ADLANDIRMAQ

Create Table Books(

	Id int,
	Name nvarchar(30),

	Constraint PK_Abdulla Primary Key (Id)

)

Drop Table Books

-- 1.2 CONSTARINTLERI SILMEK

Alter Table Employees Drop Constraint CK__Employees__FullN__114A936A

-- 1.3 CROSS JOIN

Create Table Notebook(

	Id int Primary Key Identity,
	Name nvarchar(30)
)
Create Table Brand(
	
	Id int Primary Key Identity,
	Name nvarchar(30)
)

Select * From Notebook Cross Join Brand




-- TASK 2

Create Database Fellowship

Use Fellowship

Create Table Employees
(
	Id int Primary Key Identity,
	FullName nvarchar(30) NOT NULL Check(LEN(FullName) > 3),
	Salary money Check(Salary > 0),
	DepartmentId int Foreign Key References Departments(Id) NOT NULL,
	Email nvarchar(30) UNIQUE NOT NULL Check(Email Like '%@%') Default('sql@developer.com')
)



Drop Table Employees

Drop Table Departments

Insert Into Employees
Values
(1, 'Abdulla Rahimli', 500, 1, 'ali@code.edu.az'),
(2, 'Abdulla Rahimli', 600, 1, 'hasan@code.edu.az'),
(3, 'Abdulla Rahimli', 700, 3, 'code@code.edu.az'),
(4, 'Abdulla Rahimli', 800, 4, 'asus@code.edu.az'),
(5, 'Abdulla Rahimli', 900, 2, 'acer@code.edu.az'),
(6, 'Abdulla Rahimli', 400, 4, 'hp@code.edu.az')

Create Table Departments
(
	Id int Primary Key Identity,
	Name nvarchar(30) NOT NULL Check(LEN(Name) > 2)
)

Insert Into Departments
Values
(1, 'Code Academy'),
(2, 'Compar Academy'),
(3, 'Step IT Academy'),
(4, 'IT Brains Academy')




