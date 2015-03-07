RSpec.describe Timecard, :type => :model do

it { should have_many :days }
it { should belong_to :user }

end