User.delete_all
Match.delete_all

Mamdouh = User.create(first_name: "Mamdouh", last_name: "Sibai", admin: true, email: "sibaim@gmail.com", password: "abc1234")
Jt = User.create(first_name: "Jt", last_name: "Breu", admin: false, email: "jt@gmail.com", password: "abc1234")
Jack = User.create(first_name: "Jack", last_name: "Jonz", admin: false, email: "jack@gmail.com", password: "abc1234")
Ces = User.create(first_name: "Ces", last_name: "Uygun",  admin: false, email: "ces@gmail.com", password: "abc1234")
Florestan = User.create(first_name: "Florestan", last_name: "Korp",  admin: false, email: "florestan@gmail.com", password: "abc1234")
Sera = User.create(first_name: "Sera", last_name: "Am", admin: false, email: "Sera@gmail.com", password: "abc1234")



match1 = Match.create(day: Date.new, users: [Jt, Jack])
match2 = Match.create(day: Date.new, users: [Ces, Sera])
