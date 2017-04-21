User.delete_all
Match.delete_all

User.create!(
  name: 'Mamdouh Sibai',
  email: 'sibaim@gmail.com',
  password: 'abc1234',
  is_admin: true,
)
User.create!(
  name: 'Sera Am',
  email: 'sera@email.com',
  password: 'abc1234',
  is_admin: false,
)
User.create!(
  name: 'JT Breu',
  email: 'jt@email.com',
  password: 'abc1234',
  is_admin: false,
)
User.create!(
  name: 'Ces Uygun',
  email: 'ces@email.com',
  password: 'abc1234',
  is_admin: false,
)
User.create!(
  name: 'Jack Jonz',
  email: 'jack@email.com',
  password: 'abc1234',
  is_admin: false,
)
User.create!(
  name: 'Bambo Borillo',
  email: 'bambo@email.com',
  password: 'abc1234',
  is_admin: false,
)
User.create!(
  name: 'I Have No Teammate',
  email: 'noemail@email.com',
  password: 'abc1234',
  no_teammate: true,
  is_admin: false,
)
