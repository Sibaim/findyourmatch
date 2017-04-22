User.delete_all
Match.delete_all

User.create!(
  name: 'Mamdouh Sibai',
  email: 'sibaim@gmail.com',
  password: 'asd1234',
  is_admin: true,
)
# User.create!(
#   name: 'Sera Am',
#   email: 'sera@email.com',
#   password: 'asd1234',
#   is_admin: false,
# )
# User.create!(
#   name: 'JT Breu',
#   email: 'jt@email.com',
#   password: 'asd1234',
#   is_admin: false,
# )
# User.create!(
#   name: 'Ces Uygun',
#   email: 'ces@email.com',
#   password: 'asd1234',
#   is_admin: false,
# )
# User.create!(
#   name: 'Jack Jonz',
#   email: 'jack@email.com',
#   password: 'asd1234',
#   is_admin: false,
# )
# User.create!(
#   name: 'Bambo Borillo',
#   email: 'bambo@email.com',
#   password: 'asd1234',
#   is_admin: false,
# )
User.create!(
  name: 'I Have No Teammate',
  email: 'noemail@email.com',
  password: 'asd1234',
  no_teammate: true,
  is_admin: true,
)

25.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'asd1234'
  )
end
