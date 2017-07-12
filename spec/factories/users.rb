FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    first_name 'Jimmy'
    last_name 'Jim-Jim'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end

  factory :non_authorized_user, class: "User" do
    first_name 'Bad Jimmy'
    last_name 'Not Jim-Jim'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end
end