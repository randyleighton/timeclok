class String #this is for terminal colors to spruce things up!
  def black;          "\033[30m#{self}\033[0m" end
  def green;          "\033[32m#{self}\033[0m" end
  def magenta;        "\033[35m#{self}\033[0m" end
end

# Destroy Existing Data
print "Cleaning Database".magenta
User.destroy_all
print "..."
Timecard.destroy_all
print "..."
Day.destroy_all
print "..."
puts "Done.".green

# Create New Data
print "Seeding Database".magenta
user1 = User.create(email: "randyleighton@yahoo.com", name:"Randy", password: "test1234")
print "..."
binding.pry
timecard = Timecard.create(user_id: user1.id, start_date: DateTime.now, end_date: start_date + 6)
print "..."
day1 = Day.create(user_id: user1.id, timecard_id: timecard.id, start_time: Time.now - 7, 
                  stop_time: Time.now + 1)
print "..."
puts "Done.".green
puts "Created " +
 "#{Timecard.count}".green + " Timecards,".black +
 " #{Day.count}".green + " Days".black +
 " #{User.count}".green + " Users".black
