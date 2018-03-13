class Student < ApplicationRecord
	has_many :capstones
	has_many :educations
	has_many :experiences
	has_many :skills

	
  def as_json
    {
      firstName: first_name,
      lastName: last_name,
      email: email,
      password: password_digest,
      phoneNumber: phone_number,
      bio: bio,
      linkedinUrl: linkedin_url,
      twitterHandle: twitter_handle,
      websiteUrl: website_url,
      resumeUrl: resume_url,
      githubUrl: github_url,
      photo: photo,
      education: educations.as_json
    }
  end
end
