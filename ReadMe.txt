- Abra o projeto WebApiSig e execute-o;

-Para testes, Abra o PostMan e execute as Urls abaixo, usando os Métodos que as acompanha,
e se necessário adicionando os dados no corpo(Body) da requisição.

-----------------------------------------------------------------------
-----------------------------------------------------------------------
------------------------------Owner------------------------------------
Método Post Criado somente para teste do Owner
https://localhost:44305/api/Owners

Body:
{
  "name":"Adam Smith
}

-----------------------------------------------------------------------

Método GET:
https://localhost:44305/api/Owners

ou Passando o Id

https://localhost:44305/api/Owners/1


-----------------------------------------------------------------------
-----------------------------------------------------------------------
-------------------------------Cats------------------------------------

Post
https://localhost:44305/api/Cats

{
  "name":"Lily",
  "age" : 5,
  "ownerId" : 1
}

-----------------------------------------------------------------------
GET

https://localhost:44305/api/Cats


https://localhost:44305/api/Cats/1
-----------------------------------------------------------------------
PUT

https://localhost:44305/api/Cats/2

Body 
{
   "id" : 2,
	"name": "Lily2",
    "age": 4,
    "ownerId": 2,
    "owner": null
}

-----------------------------------------------------------------------
DELETE
https://localhost:44305/api/Cats/2

-----------------------------------------------------------------------
-----------------------------------------------------------------------
-------------------------------Dogs------------------------------------
Post
https://localhost:44305/api/Dogs

{
  "name":"Buddy",
  "age" : 4,
  "ownerId" : 2
}

-----------------------------------------------------------------------
GET

https://localhost:44305/api/Dogs


https://localhost:44305/api/Dogs/1
-----------------------------------------------------------------------
PUT

https://localhost:44305/api/Dogs/2

Body 
{
  "id" : 2,
  "name":"Buddy2",
  "age" : 4,
  "ownerId" : 2

}

-----------------------------------------------------------------------
DELETE
https://localhost:44305/api/Dogs/2