require 'rails_helper'

RSpec.describe Match, type: :model do




.to match_array [room1, room2, room3]
expect(person).to have_attributes
expect(d).to match /TEST/i
expect(x).to be_instance_of Fixnum
expect(y).to be_kind_of Numeric
expect(z).to respond_to(:length)
expect(x).to be true
expect(y).to be false

let(:user3) { create :user, is_admin: false }
=====

require 'rails_helper'
require 'match'
RSpec.describe Match, type: :model do

  describe "boolean" do
   let!(:user1) { create :user, is_admin: true,no_teammate: true }
   let!(:user2) { create :user, is_admin: false,no_teammate: false }
   let!(:user3) { create :user, is_admin: false,no_teammate: true }

   it "returns an array of is_admin: false" do
     expect(User.all.select { |u| u.is_admin == false }).to match_array [user2, user3]
   end
   it "returns an array of no_teammate: true" do
     expect(User.all.select  { |u| u.no_teammate == true && u.is_admin == false }).to match_array [user3]
   end
 end

 describe ".makeCouples" do
   let!(:user1) { create :user, is_admin: true}
   let!(:user2) { create :user, is_admin: false}
  #  let!(:user3) { create :user, is_admin: false}


   it "assigns each user to a match" do

     def self.makeCouples()
       couples = []
       picked_students = []
       students = User.all.select { |u| u.is_admin == false }
       students.push(User.find{ |u| u.no_teammate == true}) if students.length.odd?
       couples_per_day = students.length / 2

       couples_per_day.times do
         randomizer_first = rand(students.length)
         first_pick = students[randomizer_first]
         picked_students << students.delete_at(randomizer_first)

         randomizer_second = rand(students.length)
         second_pick = students[randomizer_second]
         picked_students << students.delete_at(randomizer_second)

         couples << [first_pick, second_pick]
         end
         return couples
       end
       expect(Match.makeCouples).to match_array [user1,user2]
   end
 end
end
