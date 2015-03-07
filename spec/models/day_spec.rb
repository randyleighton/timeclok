RSpec.describe Day, :type => :model do

it { should belong_to :timecard }
it { should belong_to :user }

end