RSpec.describe User, :type => :model do

it { should validate_presence_of :name }
it { should validate_presence_of :email }
it { should validate_presence_of :password }

it "should create a user" do
  user = User.create(name:"tester", email:"tester@test.com", password:"test")
  expect(User.all).to eq [user]
end

end
