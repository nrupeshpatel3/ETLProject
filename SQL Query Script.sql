CREATE DATABASE school_uni_db

use school_uni_db;

select * from school_rank;

select * from school_name;

select * from school_name where school_name like "Princeton%";

select a.school_name,b.name ,b.rank  
from school_name a join school_rank b
on a.school_name = b.name


CREATE TABLE static_pvt_pub (
  
  id INT AUTO_INCREMENT NOT NULL,
  private_public iNT NOT NULL,
  Description  VARCHAR(30),
  PRIMARY KEY (id)
  )
  
  INSERT INTO static_pvt_pub (private_public, Description)
VALUES (1, "Public");
commit;

INSERT INTO static_pvt_pub (private_public, Description)
VALUES (2, "Private-NonProfit");


INSERT INTO static_pvt_pub (private_public, Description)
VALUES (3, "Privatefor-Profit");


select * from school_name;

select * from school_scores

select a.school_name, a.school_id,b.rank,a.private_public, c.description ,d.sat_score
from school_name a 
join school_rank b on a.school_name = b.name
join static_pvt_pub c on  a.private_public=c.private_public
join school_scores d on a.school_id=d.school_id
order by rank 

select * from static_pvt_pub;



