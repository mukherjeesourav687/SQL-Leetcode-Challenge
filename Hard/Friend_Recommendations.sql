create database leetcodify;

use leetcodify;

create table listens (
user_id int,
song_id int,
day date
);

create table friendship (
user1_id int,
user2_id int
);

-- insert sample data here

-- solution
with unique_listens as (
select distinct *
from listens
),
valid_users as (
select user_id, day
from unique_listens
group by user_id, day
having count(*) >= 3
),
friends as (
select l1.user_id, l2.user_id recommended_id
from unique_listens l1
join unique_listens l2
on l1.user_id < l2.user_id
and l1.song_id = l2.song_id
and l1.day = l2.day
join valid_users v
on l1.user_id = v.user_id
and l1.day = v.day
where (l1.user_id, l2.user_id) not in (
select user1_id, user2_id
from friendship
)
group by l1.user_id, l2.user_id
having count(*) >= 3
)
select user_id, recommended_id
from friends
union
select recommended_id, user_id
from friends;
