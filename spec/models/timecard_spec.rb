describe Timecard do

  it { should have_many :days }
  it { should belong_to :user }

  let (:user1) {FactoryGirl.create(:user, email: "randyleighton@yahoo.com", name:"Randy", password: "test1234")}

  describe "Timecard Creation" do
    it "should take a start date and stop date for the timecard" do
      # timecard = Timecard.create(start_date:DateTime.now, end_date:DateTime.now + 7)
      timecard = Timecard.create(user_id: user1.id, start_date: "03/31/2015", end_date: start_date + 6)
      expect(Timecard.all).to eq [timecard]
    end
  end

end