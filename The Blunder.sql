//ceil : làm tròn đến số nguyên nhỏ nhất lớn hơn hoặc bằng
SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0',''))) FROM EMPLOYEES;
