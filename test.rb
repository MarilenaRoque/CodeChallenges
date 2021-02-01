all_meetings = [{ id: 1, hour_start: 3, user_id: 1, room_id: 1, title: "Marilena Meeting", description: "An amazing meeting", start_time: "2021-01-10 21:00:00", created_at: "2021-01-10 21:25:33", updated_at: "2021-01-10 21:25:33"},
  { hour_start: 5, id: 2, user_id: 1, room_id: 2, title: "202 Meeting", description: "An amazing meeting", start_time: "2021-01-11 00:13:00", created_at: "2021-01-11 00:14:21", updated_at: "2021-01-11 00:14:21"}, 
  { hour_start: 55, id: 3, user_id: 1, room_id: 3, title: "Marilena Meeting", description: "An amazing meeting", start_time: "2021-01-11 00:27:00", created_at: "2021-01-11 00:27:53", updated_at: "2021-01-11 00:27:53"},
  { hour_start: 9, id: 4, user_id: 1, room_id: 3, title: "Meeting with hour some", description: "An amazing meeting", start_time: "2021-01-11 11:37:00", created_at: "2021-01-11 01:37:28", updated_at: "2021-01-11 01:37:28"}]

meeting_hour = all_meetings.find {|e| e.title === 9 }
puts meeting_hour