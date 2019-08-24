FactoryBot.define do
  sequence :email do |i|
    "test#{i}@example.com"
  end
  
  factory :user do
    first_name { 'Jon' }
    last_name { 'Snow' }
    email { generate :email }
    password { 'password' }
    password_confirmation { 'password' }
  end

  factory :admin_user, class: "AdminUser" do
    first_name { 'Jon' }
    last_name { 'Snow' }
    email { generate :email }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
