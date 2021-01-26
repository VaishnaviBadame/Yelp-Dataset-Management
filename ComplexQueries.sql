select b.city as City, count(b.business_id) as business_count, round(avg(b.stars),1) as rating
from business b, hours h 
where b.business_id in (select distinct c.business_id 
							from categories as c 
							where c.categories like '%insurance%') 
and b.business_id = h.business_id and(h.sunday not like '%0:0-0:0%' and h.sunday is not null) 
group by City 
order by business_count desc;

select u.name as User_name,u.average_stars as User_rating
from user as u 
where u.yelping_since > 365 
and review_count> 500 
and exists(select user_id from review as r  
				where r.user_id= u.user_id and r.useful>= 10) 
order by u.average_stars desc;

select distinct b.name,b.address, b.stars
	from business as b, attributes as a, categories as c 
	where b.business_id = a.business_id 
	and b.business_id = c.business_id 
	and b.postal_code ='85027' 
	and a.restaurantsdelivery = 'true' 
	and (c.categories like '%food%' or c.categories like '%restaurant%') 
	order by b.stars desc; 