User.delete_all
Match.delete_all

Mamdouh = User.create(first_name: "Mamdouh", last_name: "Sibai", is_admin: true, email: "sibaim@gmail.com", password: "abc1234")
Jt = User.create(first_name: "Jt", last_name: "Breu", is_admin: false, email: "jt@gmail.com", password: "abc1234")
Jack = User.create(first_name: "Jack", last_name: "Jonz", is_admin: false, email: "jack@gmail.com", password: "abc1234")
Ces = User.create(first_name: "Ces", last_name: "Uygun",  is_admin: false, email: "ces@gmail.com", password: "abc1234")
Florestan = User.create(first_name: "Florestan", last_name: "Korp",  is_admin: false, email: "florestan@gmail.com", password: "abc1234")
Sera = User.create(first_name: "Sera", last_name: "Am", admin: false, is_admin: "Sera@gmail.com", password: "abc1234")



match1 = Match.create(day: Date.new, users: [Jt, Jack])
match2 = Match.create(day: Date.new, users: [Ces, Sera])
