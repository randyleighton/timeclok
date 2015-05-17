  factory :user do
    username Faker::Internet.user_name
    email Faker::Internet.email
    password Faker::Internet.password
    password_confirmation { password }
  end

  factory :timecard do
    user_id 1
    start_date DateTime.now 
    end_date DateTime.now + 7
  end

  factory :day do
    user_id 1
    timecard_id 1
    work_date DateTime.now
    start_time Time.now
    stop_time Time.now + 480
    lunch_start Time.now + 240
    lunch_end Time.now + 300
  end