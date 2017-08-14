
FactoryGirl.define do

  factory :savek do |s|
    s.first_name = "Karthik"
    s.last_name = "YR"
    s.occupation = "Engineer",
    s.latitude = "12.35467",
    s.longitude = "77.3524",
    s.radius = "235",
    s.avg_rating = "4.5",
    s.ratings =  "2",
    s.gender = "Male",
    s.address = "Marathahalli, Bangalore",
    s.phone = "+91 9876543210"
  end
end