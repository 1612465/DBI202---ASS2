SELECT h.hacker_id ,h.name
FROM Submissions s
inner join Challenges c on s.challenge_id = c.challenge_id
inner join Difficulty d on c.difficulty_level = d.difficulty_level
inner join Hackers h on s.hacker_id=h.hacker_id
where s.score =d.score and c.difficulty_level = d.difficulty_level
group by h.hacker_id ,h.name
having count(s.hacker_id)>1
order by count(s.hacker_id) DESC, s.hacker_id ASC
