select name,address,stars
      from business
      where name like '%Great Clips%';


select distinct b.name, b.address,b.city, b.stars
        from business as b, categories as c
        where b.business_id =c.business_id
        and b.city like '%Tempe%'
        and c.categories like '%Hair%';

select distinct b.name, b.address,b.city, b.stars
        from business as b, categories as c
        where b.business_id =c.business_id
        and b.city like '%Tempe%'
        and c.categories like '%Hair%'
        and b.stars >=4 ;

select distinct b.name, b.address,b.city, b.stars
       from business as b, categories as c
       where b.business_id =c.business_id
       and b.city like '%Tempe%'
       and c.categories like '%air%'
       and b.stars >=3 ;


select distinct b.name, b.address,b.city, b.stars
        from business as b, categories as c
        where b.business_id =c.business_id
        and b.city like '%Tempe%'
        and c.categories like '%Hair%'
        and b.stars >=4
        and b.postal_code='85283' ;