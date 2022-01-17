use quanlysinhvien;
select * from Student;
-- hiển thị danh sách học viên đang theo học
select * from Student where Status = true;
-- hiển thị các danh sách các môn học có thời gian nhỏ hơn 10
select * from Subject where Credit < 10;
-- hiển thị danh sách học viên lớp A1
select S.StudentId, S.StudentName, C.ClassName
from Student S join Class C on S.ClassId = C.ClassID;
select S.StudentId, S.StudentName, C.ClassName
from Student S join Class C on S.ClassId = C.ClassID
where C.ClassName = 'A1';
-- hiển thị điểm môn CF của các học viên
select S.StudentId, S.StudentName, Sub.SubName, M.Mark
from Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId;
select S.StudentId, S.StudentName, Sub.SubName, M.Mark
from Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
where Sub.SubName = 'CF';            
