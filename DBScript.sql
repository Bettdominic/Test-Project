Create Table tblCustomer(    
CustomerId int IDENTITY(1,1) NOT NULL,    
Name Varchar(20) NOT NULL,    
City Varchar(20) NOT NULL,    
Country Varchar(20) NOT NULL,    
Gender Varchar(6) NOT NULL   
)

Create procedure sp_AddCustomer     
(    
    @Name VARCHAR(20),     
    @City VARCHAR(20),    
    @Country VARCHAR(20),    
    @Gender VARCHAR(6)    
)    
as     
Begin     
    Insert into tblCustomer (Name,City,Country, Gender)     
    Values (@Name,@City,@Country, @Gender)     
End

Create procedure usp_GetAllCustomers    
as    
Begin    
    select 
		CustomerId,
		Name,
		City,
		Country,    
		Gender
    from tblCustomer    
End

Create procedure usp_GetCustomerByID
(    
    @CustomerId int
)    
as     
Begin     
    SELECT * FROM tblCustomer WHERE CustomerID= @CustomerId
End

Create procedure usp_UpdateCustomer      
(      
   @CustomerId INTEGER ,    
   @Name VARCHAR(20),     
   @City VARCHAR(20),    
   @Country VARCHAR(20),    
   @Gender VARCHAR(6)    
)      
as      
begin      
   Update tblCustomer       
   set Name=@Name,      
   City=@City,      
   Country=@Country,    
   Gender=@Gender      
   where CustomerId=@CustomerId      
End

Create procedure usp_DeleteCustomer     
(      
   @CustomerId int      
)      
as       
begin      
   Delete from tblCustomer where CustomerId=@CustomerId      
End