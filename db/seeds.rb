@user = User.create(email: "test@test.com", 
                    password: "123456", 
                    password_confirmation: "123456", 
                    first_name: "Jimmy", 
                    last_name: "Jim-Jim",
                    phone: "8019495782")

puts "1 user created"

AdminUser.create(email: "admin@test.com", 
                 password: "asdfasdf", 
                 password_confirmation: "asdfasdf", 
                 first_name: "Admin", 
                 last_name: "Name",
                 phone: "8019495782")

puts "1 Admin User created" 

100.times do |post|
  Post.create(date: Date.today, rationale: "Praesent neque soluta integer vehicula, sollicitudin parturient at interdum rutrum eius maecenas, sed libero malesuada vulputate, dignissim magna, habitant enim volutpat tincidunt quisque a. Vestibulum mattis augue in amet lacus maecenas. Neque integer sit. A mattis lobortis adipiscing tellus. Eu vitae, vel quis nullam vitae vivamus, natoque arcu tortor neque erat nunc tristique. Ullamcorper rutrum vivamus aliquam neque, tellus ullamcorper sed quis ullamcorper, cubilia id purus mi quisque a, a malesuada tincidunt hac, proin eu consequat ac. Et non hac maecenas pede et, vel amet consequat pede augue hendrerit id, ornare gravida vel velit vestibulum donec non.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created."

AuditLog.create!(user_id: @user.id,
                status: 0,
                start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id,
                status: 0,
                start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id,
                status: 0,
                start_date: (Date.today - 20.days))

puts "3 Audit Logs have been created."