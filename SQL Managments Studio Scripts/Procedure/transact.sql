create procedure InsertInto 
(@PPYearOfPurchases int)
as 


  if @PPYearOfPurchases in (select PYearOfPurchases from PurchStat)
  begin
    THROW 51000, 'this year statistic already exists', 1
  end

  else 

  begin 



    declare 
    @PYearOfPurchases int,
    @PYearOfWork int, 
    @PName varchar(40), 
    @PPurchPrice int,
    @ACountry varchar(30),
    @CCountry varchar(30)

    declare testcursor cursor for 
    select 
      YEAR(DateOfPurchase) AS YearOfPurch,  
    W.YearOfWork, 
    D.Name,
    P.PurchPrice,
    B.Country, 
    C.country
    from Artworks W inner join Periods D
    on W.ID_Period=D.ID
    inner join Purchases P
    on W.id=P.ID_Artwork
    inner join Customers C
    on P.ID_Customer=C.ID
    inner join Artists  A
    on W.ID_Artist=A.ID
    Inner join Birthplaces B
    on A.ID_Birthplace=B.ID

    where YEAR(DateOfPurchase) = @PPYearOfPurchases
    order by  P.DateOFPurchase, W.YearOfWork

    begin tran
    open testcursor
    fetch next from testcursor into 
    @PYearOfPurchases,
    @PYearOfWork,
    @PName,
    @PPurchPrice,
    @ACountry,
    @CCountry
    while @@FETCH_STATUS = 0 
    begin 
    insert into PurchStat values (
    @PYearOfPurchases,
    @PYearOfWork,
    @PName,
    @PPurchPrice,
    @ACountry,
    @CCountry)
    
    fetch next from testcursor into 
    @PYearOfPurchases,
    @PYearOfWork,
    @PName,
    @PPurchPrice,
    @ACountry,
    @CCountry

    END

  end


commit tran;
close testcursor;
deallocate testcursor;




EXEC InsertInto @PPYearOfPurchases = 2020