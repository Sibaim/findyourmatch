require 'rails_helper'

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
   let!(:user3) { create :user, is_admin: false}

   it "assigns each user to a match" do
     Match.makeCouples()
     expect(Match.makeCouples).to include [user2, user3]
   end
 end
end
