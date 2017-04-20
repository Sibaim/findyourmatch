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
  email: 'noemail@email.com',
  password: 'abc1234',
  is_admin: false,
)
User.create!(
  name: 'JT Breu',
  email: 'noemail@email.com',
  password: 'abc1234',
  is_admin: false,
)
User.create!(
  name: 'Ces Uygun',
  email: 'noemail@email.com',
  password: 'abc1234',
  is_admin: false,
)
User.create!(
  name: 'Jack Jonz',
  email: 'noemail@email.com',
  password: 'abc1234',
  is_admin: false,
)
User.create!(
  name: 'No Teammate',
  email: 'noemail@email.com',
  password: 'abc1234',
  no_teammate: false,
)
