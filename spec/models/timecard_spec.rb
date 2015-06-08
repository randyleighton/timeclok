describe Timecard do

  it { should have_many :days }
  it { should belong_to :user }
  it { should validate_presence_of :start_date }
  it { should validate_presence_of :end_date }

  let (:user1) {FactoryGirl.create(:user, email: "randyleighton@yahoo.com", name:"Randy", password: "test1234")}
  let (:timecard1) {FactoryGirl.create(:timecard) }

  describe "Timecard Creation" do
    it "should take a start date and stop date for the timecard" do
      timecard = Timecard.create(user_id: user1.id, start_date: "03/31/2015", end_date: start_date + 6)
      expect(Timecard.all).to eq [timecard]
    end
  end

  describe "scope" do
    it "should sort the timecards in ascending order" do 

    end
    it "should sort the timecards in descending order" do

    end
  end

end