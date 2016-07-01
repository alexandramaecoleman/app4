FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
		email 
    password "1234567"
    first_name "Info"
    last_name "Example"
    admin false
  end
	
	factory :admin, class: User do
		email 
		password "7654321"
		admin true
		first_name "Admin"
		last_name "User"
	end
	
end