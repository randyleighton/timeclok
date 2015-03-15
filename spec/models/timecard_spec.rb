RSpec.describe Timecard, :type => :model do

it { should have_many :days }
it { should belong_to :user }

it "should take a start date and stop date for the timecard" do
  timecard = Timecard.create(start_date:DateTime.now, end_date:DateTime.now + 7)
  expect (Timecard.all).to eq [timecard]
end

end