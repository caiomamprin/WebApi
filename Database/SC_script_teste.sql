Create Table Owner
	(
		--Id int not null  identity(1,1) ,
		id serial NOT NULL,
		Name varchar(300) null ,
		CONSTRAINT [PK_Owner_Id] PRIMARY KEY CLUSTERED (Id)		
	)

Create Table Cats
	(
		--id int not null identity(1,1),
		id serial NOT NULL,
		Name varchar(300) null,
		Age int null,
		OwnerId int not null,

		CONSTRAINT [PK_Cats_Id] PRIMARY KEY CLUSTERED (Id),
		CONSTRAINT [FK_Cats_Owner_id] FOREIGN KEY (OwnerId) REFERENCES Owner(Id)

	)
Create Table Dogs
(
	--id int not null identity(1,1),
	id serial NOT NULL,
	Name varchar(300) null,
	Age int null,
	OwnerId int not null,

	CONSTRAINT [PK_Dogs_Id] PRIMARY KEY CLUSTERED (Id),
	CONSTRAINT [FK_Dogs_Owner_id] FOREIGN KEY (OwnerId) REFERENCES Owner(Id)
)

insert into Owner  (Name) values ('Adam Smith')
go
insert into Owner  (Name) values ('Scott Johnson')
go
insert into Owner  (Name) values ('Kimberly Parker')
go


insert into Cats  (Name,Age,OwnerId) values ('Lily',5,1)
go
insert into Cats  (Name,Age,OwnerId) values ('Chloe',2,3)
go
insert into Cats  (Name,Age,OwnerId) values ('Charlie',3,2)
go


insert into Dogs  (Name,Age,OwnerId) values ('Maggie',1,2)
go			
insert into Dogs  (Name,Age,OwnerId) values ('Duke',7,1)
go			
insert into Dogs  (Name,Age,OwnerId) values ('Buddy',4,2)
go


/*
Monte uma query que selecione apenas os nomes da tabela Cats que começem com 'c', e os nomes da tabela Dogs que terminem com 'e'.
Se possível retorne os dados em um único resultset.

*/

Select 
	Name
From
	Cats 

Where 
	Name Like 'C%' 
Union Select
	Name 
From
	Dogs
Where 
	Name Like '%e'


/* Selecione o registro na tabela Dogs com menor Age */

Select top 1
	Age
From
	Dogs
Order By Age Asc


/* Selecione a soma da coluna Age da tabela Cats */ 

Select 
	Sum(Age) as 'Sum of Age'
From
	Cats



/* 6) Selecione os nomes dos Owner e seus respectivos Cats */ 


Select
	O.Name 'Owners Name',
	C.Name 'Cats Name'
From
	Owner O
Inner Join Cats C On C.OwnerId = O.Id


/* 7) Selecione os registros da tabela Dogs com maior Age separados por OwnerId */

Select 
	Age
	,OwnerId
From
	Dogs 
Group By OwnerId, Age
Order By Age Desc

/* 8) Retorne o nome do Owner e a respectiva quantidade de animais total */
Select O.Name, c.Count + d.Count as 'Totals'
From [Owner] o
Outer Apply (Select Count(*) as Count From Cats c Where o.Id = c.OwnerId) C
Outer Apply (Select Count(*) as Count From Dogs d Where o.Id = d.OwnerId) D
Order by Totals desc














