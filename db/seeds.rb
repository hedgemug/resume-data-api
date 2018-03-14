50.times do
  Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: "password", phone_number: Faker::PhoneNumber.phone_number, bio: "test account", linkedin_url: "https://www.linkedin.com/in/frederick-douglass/", twitter_handle: "GCPcloud", website_url: "https://www.google.com", github_url: "https://github.com/hedgemug")
end

200.times do
  Skill.create(student_id: rand(49), skill_name: Faker::ProgrammingLanguage.name)
end

100.times do
  Capstone.create(student_id: rand(49), title: "capstone title", description: "a great project for my capstone", url: "https://www.google.com")
end

120.times do
  Education.create(student_id: rand(49), start_date: Faker::Time.backward(14, :evening), end_date: Faker::Time.forward(23, :morning), degree: "Bachelor of Science, Computer Science", school: "Actualize University", details: "I was the valedictorian of my coding university class. I was also in the glee club.")
end

120.times do
  Experience.create(student_id: rand(49), start_date: Faker::Time.backward(14, :evening), end_date: Time.now, title: Faker::Job.title, company: Faker::Company.name, details: "I work at this company and I have achieved X, Y, and Z.")
end
