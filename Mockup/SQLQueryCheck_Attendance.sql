/*check attendance */
SELECT [Group].GroupCode,Student.Scode,Student.FullName,Student.img,Slot.status,CheckAttedance.Comment,CheckAttedance.Taker 
from Student right join CheckAttedance on Student.SID = CheckAttedance.SID 
right join Slot on CheckAttedance.SlotID = Slot.SlotID 
right join [Group] on slot.GroupID =  [Group].GroupID


/* list student */
SELECT Room.Campus,[Group].Term,[Group].Department,Subject.SubName,[Group].GroupCode 
from Room full outer join Slot on Room.RoomID = Slot.RoomID 
full outer join [Group] on [Group].GroupID = Slot.GroupID 
full outer join Subject on  Subject.SubID  = [Group].SubID

/*Schedule*/
SELECT Room.Campus,Instructor.IName,slot.[Date],Subject.SubCode,room.RoomCode
from Room full outer join Slot on Room.RoomID = Slot.RoomID 
full outer join [Group] on [Group].GroupID = Slot.GroupID	
full outer join Subject on Subject.SubID = [Group].SubID 
full outer join Instructor on Instructor.InstructorID = [Group].InstructorID