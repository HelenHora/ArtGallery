create procedure  PriceMax (@MaxPrice int,
							@Period int)
as
begin
select 
Artworks.Id, Artworks.Title, Artworks.Price, Artworks.Title, Artworks.ID_Period, Artworks.ID_Artist, 
Artists.ID, Artists.Lastname, Artists.Firstname
From Artworks
Inner Join Artists
on
Artworks.ID_Artist=Artists.ID
Where Artworks.Price > @MaxPrice AND
	Artworks.ID_Period = @Period
end;

execute PriceMax 800000, 4


